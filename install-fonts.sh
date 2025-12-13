#!/usr/bin/env bash

set -e

FONT_DIR="$HOME/.local/share/fonts"
FONT_NAME="JetBrainsMono"

mkdir -p "$FONT_DIR"
cd "$FONT_DIR"

echo "Baixando JetBrainsMono Nerd Font..."

curl -fLo "${FONT_NAME}.zip" \
  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

unzip -o "${FONT_NAME}.zip" -d "${FONT_NAME}"
rm "${FONT_NAME}.zip"

echo "Atualizando cache de fontes..."
fc-cache -fv

echo "JetBrainsMono Nerd Font instalada com sucesso."
