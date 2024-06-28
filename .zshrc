zmodload zsh/zprof

setopt autocd

for config_file in ./.zshrc.d/*.zsh; do
    source "$config_file"
done

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
bindkey '\t' end-of-line

zprof
