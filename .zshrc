setopt autocd

for config_file in ~/src/personal/dotconfig/.zshrc.d/*.zsh; do
    source "$config_file"
done

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
bindkey '\t' end-of-line

neofetch

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# bun completions
[ -s "/Users/mikeylau/.bun/_bun" ] && source "/Users/mikeylau/.bun/_bun"
