zmodload zsh/zprof

# zsh
setopt autocd

PROMPT='%1d # '

# git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt prompt_subst

RPROMPT='${vcs_info_msg_0_}'

zstyle ':vcs_info:git:*' formats '%b'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# completion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
bindkey '\t' end-of-line

# pipx
export PATH="$PATH:/Users/mikeylau/.local/bin"

# nvim
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# node
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

zprof

alias ls='ls -l'
alias vim='nvim'
alias vim-zsh='nvim ~/.zshrc'
alias cd-git='~/Documents/git'
alias cd-git-hesi='~/Documents/git/hesi'
alias cd-git-tsc='~/Documents/git/tsc'
alias cd-git-rpc='~/Documents/git/re-plus-connect'

