#!/bin/bash

if ! command -v node &> /dev/null; then
    echo "Node.js não está instalado."
    exit 1
fi

versao=$(node -v | sed 's/^v//')

echo $versao
