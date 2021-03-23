autoload -Uz vcs_info

setopt PROMPT_SUBST

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' actionformats '%b (%a)'

PROMPT='%~ ⏾ '
RPROMPT='${vcs_info_msg_0_}'
