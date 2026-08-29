### ===== ENVIRONMENT =====

# Disable greeting
set -g fish_greeting

# PATH
fish_add_path ~/.local/bin
fish_add_path /var/lib/flatpak/exports/bin

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

#Nvim
alias nv="NVIM_APPNAME=my-nvchad nvim"

# eza
alias l="eza --icons --group-directories-first --color=always --git"
alias ls="eza -a --icons --color=always --group-directories-first --git"
alias t="eza   --tree --icons --color=always --group-directories-first --git --level=1"
alias lt="eza -a --long --tree --icons --color=always --group-directories-first --git --level=1"

# zoxide
alias cd="z"

# Starship prompt
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
starship init fish | source
