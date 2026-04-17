### ===== ENVIRONMENT =====

# Disable greeting
set -g fish_greeting

# PATH
fish_add_path ~/.local/bin

# Terminal & editor
set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx MANPAGER "nvim +Man!"


### ===== TOOLS =====

fzf --fish | source
zoxide init fish | source


### ===== KEYBINDINGS =====

function fish_user_key_bindings
    fish_vi_key_bindings
end


### ===== ALIASES =====

# eza
alias l="eza --icons --color=always"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git --level=1"

# zoxide
alias cd="z"

# Starship prompt
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source
