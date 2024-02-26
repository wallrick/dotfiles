source ~/.zsh/env # Default configuration
source ~/.functions # Useful functions
source ~/.alias # User defined aliases

source ~/.zsh/cmdline_completion
source ~/.zsh/zsh_terminal_cfg
source ~/.zsh/nvm
source ~/.zsh/zap_plugins
source ~/.zsh/zoxide

fpath+=${ZDOTDIR:-~}/.zsh/zsh_functions

# Fix to ctrl+r in tmux
bindkey '^R' history-incremental-search-backward
# Added ctrl+p for good measure, since that was also broken
bindkey '^P' up-history

export EDITOR='vim'

export PATH=~/bin:/Users/rwall/.local/bin:$PATH

# Env config
source ~/.env
