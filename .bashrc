#
# ~/.bashrc
#

### EXPORT ###
export TERM=xterm-256color    # Sets the terminal type
export EDITOR=nvim            # Sets Neovim as the default editor
export MANPAGER="nvim +Man!"  # Sets Neovim as the pager for man pages

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\e[1;32m\][\u@\h \[\e[1;34m\]\w\[\e[1;32m\]]\[\e[0m\]\$ '

### ALIASES ###

# navigation
alias ..="cd .."
alias grep='grep --color=auto'

# changing "cd" to "zoxide"
eval "$(zoxide init bash)"
alias cd="z"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# changing "ls" to "eza"
alias l="eza --icons --color=always --group-directories-first --git"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias ll="eza -a --long --icons --color=always --group-directories-first --git"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git"

# aliases for "Neovim"
alias v="nvim"

# aliases for python
alias p="python"
alias sp="source ~/Projects/cs50-web/cs50/bin/activate.fish"

# yazi terminal file manpager
alias y="yazi"

# alias for sourcing fish config
alias sb="source ~/.bashrc"
alias bc="nvim ~/.bashrc"

# shortcuts for pacman
alias sps="sudo pacman -S"
alias spr="sudo pacman -Rns"
alias spu="sudo pacman -Syyu"
alias spc="sudo pacman -Rns $(pacman -Qtdq)"

alias e="exit"

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash)"
