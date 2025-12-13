
---


# Dotfiles

Configurações pessoais do meu ambiente Linux, organizadas por módulos e gerenciadas com **GNU Stow**.
O objetivo é manter um setup **reprodutível, portátil e fácil de aplicar** entre máquinas.

O repositório inclui configurações para:

- **Bash**
- **Git**
- **VS Code**
- **TexText (Inkscape)**
- Scripts auxiliares para instalação de fontes e extensões

---

## Instalação do Stow

```bash
sudo apt install stow
````

---

## Como carregar as configurações

```bash
git clone git@github.com:ErosKerouak/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow bash git vscode textext
```

Isso cria *symlinks* para os arquivos de configuração corretos no `$HOME`, mantendo o setup consistente e replicável entre máquinas.

---

## Dependências externas

Algumas configurações dependem de ferramentas que **não são instaladas automaticamente** pelo `stow`.

### Fonte (VS Code)

Para garantir consistência visual no VS Code, uso a **JetBrainsMono Nerd Font**.

Instalação:

```bash
./install-fonts.sh
```

---

### Extensões do VS Code

A lista de extensões necessárias está em `vscode-extensions.txt`.

Instalação automática:

```bash
./install-vscode-extensions.sh
```

---

## Observações

* Os scripts de instalação são **intencionais e explícitos**: nada é executado automaticamente.
* Configurações específicas de sistema (pacotes, fontes, extensões) ficam fora do escopo do `stow`.
* O repositório prioriza clareza e controle em vez de automação opaca.

```

---
