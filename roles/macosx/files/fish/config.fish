eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by Toolbox App
export PATH="$PATH:/Users/paolo/Library/Application Support/JetBrains/Toolbox/scripts"
export XDG_CACHE_HOME="/Users/paolo/.cache"
export XDG_CONFIG_HOME="/Users/paolo/.config"
export STARSHIP_CONFIG="/Users/paolo/.config/starship/starship.toml"

starship init fish | source
zoxide init fish | source
fzf --fish | source

alias ll="ls -lah"
alias mm="neomutt"
alias opl="eval (op signin)"
