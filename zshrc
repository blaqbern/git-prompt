fpath=( ./zshfn "${fpath[@]}" )

setopt PROMPT_SUBST

autoload vcs_init && vcs_init
autoload cyan yellow
autoload git_status_badges git_stash_badge

PROMPT="$(cyan %~) $(yellow ⏾) " # U+23fe
RPROMPT='${vcs_info_msg_0_}$(git_status_badges)$(git_stash_badge)'
