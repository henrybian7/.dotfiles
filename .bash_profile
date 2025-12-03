# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export PS1="\[\033[38;5;219m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;74m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;245m\]@\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;49m\]\H\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;229m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;247m\][\t]\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;203m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"