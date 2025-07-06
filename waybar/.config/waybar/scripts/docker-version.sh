#!/bin/bash

if ! command -v docker &> /dev/null; then
    echo "N/A"
    exit 1
fi

version=$(docker --version | awk '{print $3}' | sed 's/,//')

echo $version