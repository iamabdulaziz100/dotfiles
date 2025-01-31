### EXPORT ###
set fish_greeting # Supresses fish"s intro message
set -gx PATH $PATH /home/paow/.local/bin
set TERM xterm-256color # Sets the terminal type
set -x EDITOR nvim # $EDITOR use neovim in terminal
set -x MANPAGER "nvim +Man!" # "nvim" as manpager

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

# changing "ls" to "eza"
alias l="eza --icons --color=always --group-directories-first --git"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias ll="eza -a --long --icons --color=always --group-directories-first --git"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git"

# changing "cd" to "zoxide"
alias cd="z"

# aliases for "Neovim"
alias v="nvim"

#alias useradd="sudo useradd -m -G wheel -s /bin/fish"
#alias userdel="sudo userdel -r"

# aliases for python
alias p="python"
alias sp="source ~/Projects/cs50-web/cs50/bin/activate.fish"

# yazi terminal file manpager
#alias y="yazi"
# alias for sourcing fish config
alias sf="source ~/.config/fish/config.fish"
alias fc="nvim ~/.config/fish/config.fish"

# shortcuts for pacman
alias sps="sudo pacman -S"
alias spr="sudo pacman -Rns"
alias spu="sudo pacman -Syyu"
alias spc="sudo pacman -Rns $(pacman -Qtdq)"

alias e="exit"
