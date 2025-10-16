#!/usr/bin/env bash
#
# Exibe o número de atualizações disponíveis no Arch Linux
# - checkupdates -> core, extra, multilib
# - yay -Qua     -> AUR
# Saída formatada em JSON para Waybar
#

# Dependências necessárias
for cmd in checkupdates yay; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "{\"text\":\"ERR\",\"tooltip\":\"$cmd não encontrado\"}"
        exit 1
    fi
done

# Cache (opcional, melhora desempenho)
CACHE_DIR="/tmp/waybar-updates"
mkdir -p "$CACHE_DIR"
PACMAN_CACHE="$CACHE_DIR/pacman"
AUR_CACHE="$CACHE_DIR/aur"
CACHE_TTL=600  # 10 minutos

# Função para usar cache
function get_cached_count() {
    local cmd=$1 cache_file=$2
    if [[ -f "$cache_file" && $(($(date +%s) - $(stat -c %Y "$cache_file"))) -lt $CACHE_TTL ]]; then
        cat "$cache_file"
    else
        local count
        count=$($cmd 2>/dev/null | wc -l)
        echo "$count" >"$cache_file"
        echo "$count"
    fi
}

# Contagem dos updates oficiais
repo_updates=$(get_cached_count "checkupdates" "$PACMAN_CACHE")

# Contagem dos updates do AUR
aur_updates=$(get_cached_count "yay -Qua" "$AUR_CACHE")

# Total
total=$((repo_updates + aur_updates))

# Ícones e cores dinâmicos
if (( total == 0 )); then
    icon="󰏕" # Nenhuma atualização
    color="#a0a0a0"
else
    icon="󰏖" # Atualizações disponíveis
    color="#f9e2af"
fi

# Tooltip detalhado
tooltip="$( (checkupdates; yay -Qua) 2>/dev/null | sort | head -n 50 | sed ':a;N;$!ba;s/\n/\\n/g')"

# Saída em JSON para o Waybar
echo "{\"text\": \"$icon $total\", \"tooltip\": \"$tooltip\", \"color\": \"$color\"}"
