setopt PROMPT_SUBST

FPATH=$FPATH:./funcs:./funcs/colors:./funcs/git

autoload vcs_init
autoload cyan yellow magenta
autoload git_status_info git_stash_indicator

vcs_init

PROMPT='$(cyan %~) $(yellow ⏾) ' # ⏾ 23fe
RPROMPT='$vcs_info_msg_0_$(git_status_info)$(git_stash_indicator)'
