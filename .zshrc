export ZSH="/home/simon/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="terminalparty"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  cargo
  git
  rust
  ssh-agent
  gpg-agent
  sudo
  vscode
  zsh-completions
  kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:$HOME/.local/share/flatpak/exports/bin:$PATH

export LANG=en_GB.UTF-8

export GPG_TTY=$(tty)

# dots functions
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
alias dots-update='dots add --update $HOME'

eval "$(hub alias -s)"
alias update-all="sh $HOME/.scripts/update-all.sh"
alias gpg="gpg2"

setxkbmap -layout gb
