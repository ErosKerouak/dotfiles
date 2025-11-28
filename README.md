
---

# Dotfiles

Configurações pessoais do meu ambiente Linux, organizadas por módulos e gerenciadas com **GNU Stow**. Incluem ajustes de Bash, Git, VS Code e extensão TexText do Inkscape.

## Instalação do Stow

```bash
sudo apt install stow
```

## Como carregar as configurações

```bash
git clone git@github.com:ErosKerouak/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow bash git vscode textext
```

Isso criará symlinks para os arquivos de configuração corretos no `$HOME`, mantendo o setup replicável entre máquinas.

---
