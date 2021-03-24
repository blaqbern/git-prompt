fpath=( ./zshfn "${fpath[@]}" )

setopt PROMPT_SUBST

autoload -Uz vcs_init && vcs_init
autoload -Uz cyan yellow

PROMPT="$(cyan %~) $(yellow ⏾) "
RPROMPT='${vcs_info_msg_0_}'
