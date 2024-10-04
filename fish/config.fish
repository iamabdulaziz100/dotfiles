### EXPORT ###
set fish_greeting                   # Supresses fish"s intro message
set -gx PATH $PATH /home/paow/.local/bin
set TERM "xterm-256color"           # Sets the terminal type
#set -x TERMINAL "wezterm"           # Sets wwezter as default terminal
set -x EDITOR "nvim"                # $EDITOR use neovim in terminal
set -x MANPAGER "nvim +Man!"        # "nvim" as manpager

# set qt application theme in a wm
#set -gx QT_QPA_PLATFORMTHEME qt5ct
#set -gx QT_QPA_PLATFORMTHEME qt6ct
#set -gx QT_QPA_PLATFORM wayland-egl

# Set up fzf key bindings
fzf --fish | source

# "Zoxide" better "cd"
zoxide init fish | source

### FUNCTIONS ###

### SET  VI MODE  In Fish Shell ###
function fish_user_key_bindings
  fish_vi_key_bindings
end

### ALIASES ###

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# changing "ls" to "eza"
alias l="eza --icons --color=always --group-directories-first --git"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias ll="eza -a --long --icons --color=always --group-directories-first --git"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git"

# changing "cd" to "zoxide"
alias cd="z"

# aliases for "Neovim"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias ze="zeditor"
alias y="yazi"
alias f="fastfetch"

alias useradd="sudo useradd -m -G wheel -s /bin/fish"
alias userdel="sudo userdel -r"

# aliases for python
alias p="python"

# alias for sourcing fish config
alias sf="source ~/.config/fish/config.fish"
alias fc="nvim ~/.config/fish/config.fish"

# shortcuts for pacman
alias sps="sudo pacman -S"
alias spr="sudo pacman -Rns"
alias spu="sudo pacman -Syyu"
alias spc="sudo pacman -Rns $(pacman -Qtdq)"

# adding flags
alias df="df -h"               # human-readable sizes
alias free="free -m"           # show sizes in MB
alias grep="grep --color=auto" # colorize output (good for log files)

# git
alias addup="git add -u"
alias addall="git add ."
alias branch="git branch"
alias checkout="git checkout"
alias clone="git clone"
alias commit="git commit -m"
alias fetch="git fetch"
alias pull="git pull origin"
alias push="git push origin"
alias tag="git tag"
alias newtag="git tag -a"

alias e="exit"

# RANDOM COLOR SCRIPT 
# colorscript random

# Starship prompt
starship init fish | source 
set -gx STARSHIP_CONFIG ~/.config/starship/dtstarship.toml

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
