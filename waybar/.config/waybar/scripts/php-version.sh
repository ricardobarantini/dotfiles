#!/bin/bash

if ! command -v php &> /dev/null; then
    echo "PHP não está instalado."
    exit 1
fi

versao=$(php -v | head -n 1 | awk '{print $2}')

echo $versao
