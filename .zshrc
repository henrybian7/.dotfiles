export ZSH=$HOME/.oh-my-zsh

export DOTFILES_SERVER=""

# load local conf if exists
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

# Override $DOTFILES_SERVER to not empty to apply
# .zshrc.common (desktop mode with Oh My Zsh)
if [ ! -z "$DOTFILES_SERVER" ]
then
    source ~/.dotfiles/.zshrc.common
fi

source ~/.dotfiles/.zshrc.minimal

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Docker CLI completions (if installed)
if [ -d "$HOME/.docker/completions" ]; then
    fpath=($HOME/.docker/completions $fpath)
    autoload -Uz compinit
    compinit
fi
