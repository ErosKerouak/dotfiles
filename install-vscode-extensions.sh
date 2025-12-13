#!/usr/bin/env bash

set -e

if ! command -v code &> /dev/null; then
  echo "VS Code (code) não encontrado no PATH."
  exit 1
fi

echo "Instalando extensões do VS Code..."

while read -r extension; do
  [[ -z "$extension" ]] && continue
  echo "→ $extension"
  code --install-extension "$extension"
done < vscode-extensions.txt

echo "Extensões instaladas com sucesso."
