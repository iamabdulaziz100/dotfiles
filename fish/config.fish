### EXPORT ###
set fish_greeting # Supresses fish"s intro message
set -gx PATH $PATH $HOME/.local/bin/
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

# changing "ls" to "eza"
alias l="eza --icons --color=always"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git --level=1"

# changing "cd" to "zoxide"
alias cd="z"

starship init fish | source
