# Preferred editor for local and remote sessions
export EDITOR='vim'

if command -v skaffold; then
  skaffold completion zsh > ~/.zsh/completion/_skaffold
fi

if command -v kubectl; then
  kubectl completion zsh > ~/.zsh/completion/_kubectl
fi

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Fix to ctrl+r in tmux
#bindkey '^R' history-incremental-search-backward
# Added ctrl+p for good measure, since that was also broken
#bindkey '^P' up-history


# Get Kubectl config context on the prompt
[ ! -f "$HOME/.kubectl.zsh" ] && curl https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh -o "$HOME/.kubectl.zsh"

autoload -U colors; colors
source ~/.kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually ~/.zshrc):
#
if [[ -f "$HOME/.local/share/zap/zap.zsh" ]]; then
  source "$HOME/.local/share/zap/zap.zsh"
  plug "zsh-users/zsh-autosuggestions"
  plug "zap-zsh/supercharge"
  plug "zap-zsh/zap-prompt"
  plug "zsh-users/zsh-syntax-highlighting"
  plug "chrishrb/zsh-kubectl"
  plug "zap-zsh/web-search"
  #plug "romkatv/powerlevel10k"
fi
