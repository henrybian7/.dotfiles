# 🏠 Dotfiles

Personal dotfiles for macOS and Linux. Includes configurations for zsh, vim/neovim, tmux, git, and more.

## ✨ Features

- **Shell**: Zsh with [Oh My Zsh](https://ohmyz.sh/) + custom aliases and functions
- **Editor**: Neovim/Vim with plugins, syntax highlighting, and code completion
- **Terminal Multiplexer**: Tmux with custom theme and keybindings
- **Git**: Useful aliases, coloured output, and sensible defaults
- **macOS**: iTerm2 configuration included

## 📋 Prerequisites

- Git
- Curl
- zsh (will be installed if missing)

### macOS

```bash
# Install Xcode Command Line Tools (required)
xcode-select --install
```

### Linux (Debian/Ubuntu)

```bash
sudo apt update && sudo apt install -y git curl zsh
```

## 🚀 Installation

### Quick Install

```bash
cd ~
git clone https://github.com/YOUR_USERNAME/dotfiles.git .dotfiles
cd .dotfiles
./install.sh
```

### What Gets Installed

The install script will:

1. Install dependencies via your package manager (brew/apt/dnf/yum)
2. Symlink configuration files to your home directory
3. Back up any existing configs (to `*.pre.install`)
4. Install vim plugins

## ⚙️ Post-Installation Setup

After running the install script, you **must** configure these files:

### 1. Git Configuration (`~/.gitconfig`)

Update with your name and email:

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

Or edit `~/.gitconfig` directly.

### 2. SSH Configuration (`~/.ssh/config`)

Add your SSH hosts. See `.ssh/config.example` for examples:

```bash
# Example entry
Host myserver
    User your_username
    HostName your.server.com
```

### 3. Local Customisations (`~/.zshrc.local`)

This file is for machine-specific settings that shouldn't be tracked in git:

```bash
# Example: Custom PATH
export PATH=$PATH:/your/custom/path

# Example: Work-specific aliases
alias vpn="sudo openvpn /etc/openvpn/work.conf"

# Example: Custom welcome message
echo "Welcome back!"
```

## 📁 File Structure

```
.dotfiles/
├── .config/
│   └── nvim/
│       └── init.vim        # Neovim config (sources .vimrc)
├── .ssh/
│   ├── authorized_keys     # Your public keys (empty by default)
│   ├── config              # SSH host configuration
│   └── config.example      # Example SSH configurations
├── .vim/
│   ├── colors/
│   │   └── alduin.vim      # Color scheme
│   └── ftplugin/           # Filetype-specific settings
├── bin/
│   ├── delete-prefix.sh    # Utility: bulk rename files
│   └── speed.sh            # Utility: network speed for tmux
├── .bash_profile           # Bash configuration
├── .ctags                  # Ctags configuration
├── .gitconfig              # Git configuration (UPDATE THIS)
├── .gitconfig.example      # Git configuration template
├── .gitignoreglobal        # Global gitignore patterns
├── .tmux.conf              # Tmux configuration
├── .vimrc                  # Main vim configuration
├── .vimrc.common           # Vim plugins configuration
├── .vimrc.minimal          # Minimal vim settings
├── .vimrc.plug             # Vim plugin definitions
├── .zshrc                  # Main zsh configuration
├── .zshrc.common           # Oh My Zsh settings
├── .zshrc.minimal          # Shell aliases and PATH
├── install.sh              # Installation script
├── iTerm-config.json       # iTerm2 profile (import manually)
└── README.md
```

## 🔧 Configuration Options

### Server vs Desktop Mode

During installation, you'll be asked if this is a server installation. 

- **Desktop mode** (default): Full configuration with GUI-related settings
- **Server mode**: Minimal configuration optimised for remote servers

### Vim Plugins

Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug). Key plugins include:

| Plugin | Description |
|--------|-------------|
| NERDTree | File explorer (`Ctrl+Q` to toggle) |
| CtrlP | Fuzzy file finder (`Ctrl+P`) |
| vim-airline | Status bar with powerline fonts |
| vim-fugitive | Git integration |
| vim-gitgutter | Git diff in the gutter |
| deoplete | Autocompletion (neovim) |
| vim-go | Go language support |
| SimpylFold | Python code folding |

### Tmux Keybindings

| Key | Action |
|-----|--------|
| `Prefix + h/j/k/l` | Navigate panes (vim-style) |
| `Prefix + \|` | Split vertically |
| `Prefix + -` | Split horizontally |
| `Prefix + m` | Enable mouse mode |
| `Prefix + M` | Disable mouse mode |

*Default prefix is `Ctrl+B`*

### Shell Aliases

```bash
# Git shortcuts
g     # git
ga    # git add .
gc    # git commit
gs    # git status
gp    # git push

# General
v     # vim (actually nvim)
l     # ls
lsa   # ls -ahl
py    # python3
m     # make
```

## 🎨 iTerm2 Setup (macOS)

1. Open iTerm2 → Preferences → Profiles
2. Click "Other Actions..." → "Import JSON Profiles..."
3. Select `iTerm-config.json` from this repository
4. Set as default profile if desired

## 🔄 Updating

Pull the latest changes and the symlinks will automatically use the new configurations:

```bash
cd ~/.dotfiles
git pull
```

For vim plugins, run `:PlugUpdate` inside vim/neovim.

## 🗑️ Uninstalling

To restore your original configurations:

```bash
# Each backed-up file has a .pre.install suffix
mv ~/.zshrc.pre.install ~/.zshrc
mv ~/.gitconfig.pre.install ~/.gitconfig
# etc.
```

## 📝 Local Customisation Files

These files are for machine-specific settings and are **not tracked by git**:

| File | Purpose |
|------|---------|
| `~/.zshrc.local` | Shell customisations, PATH, aliases |
| `~/.vimrc.local` | Vim customisations |
| `~/.gitconfig` | Your git identity (after modifying) |

## 🤝 Contributing

Feel free to fork and customise for your own use!

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.
