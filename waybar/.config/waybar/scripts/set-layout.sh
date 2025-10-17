LAYOUT=$1

WAYBAR_DIR=~/.config/waybar
LAYOUTS_DIR=~/.config/waybar/layouts

if [ ! -d "$LAYOUTS_DIR/$LAYOUT" ]; then   
    notify-send "Layout not found."
    exit 1
fi

if [ -f ~/.config/waybar/config.jsonc ]; then
    rm ~/.config/waybar/config.jsonc
fi

if [ -f ~/.config/waybar/style.css ]; then
    rm ~/.config/waybar/style.css
fi

ln -fs $LAYOUTS_DIR/$1/style.css $WAYBAR_DIR
ln -fs $LAYOUTS_DIR/$1/config.jsonc $WAYBAR_DIR

killall -SIGUSR2 waybar

