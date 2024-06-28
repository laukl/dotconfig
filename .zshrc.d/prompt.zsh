PROMPT='%F{yellow}%1d%f %F{red}#%f '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt prompt_subst
RPROMPT='%F{yellow}${vcs_info_msg_0_}%f'

zstyle ':vcs_info:git:*' formats '%b'
