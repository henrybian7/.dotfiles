set nocompatible              " be iMproved, required
filetype off                  " required

source ~/.dotfiles/.vimrc.minimal

if !empty($DOTFILES_SERVER)
    " init plugs
    source ~/.dotfiles/.vimrc.plug

    " other conf
    source ~/.dotfiles/.vimrc.common
endif

" local conf
if filereadable("~/.vimrc.local")
    source ~/.vimrc.local
endif
set nocscopeverbose
