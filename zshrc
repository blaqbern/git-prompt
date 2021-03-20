setopt PROMPT_SUBST

FPATH=$FPATH:./funcs:./funcs/colors:./funcs/git

autoload cyan yellow
autoload vcs_init
autoload git_status_info git_stash_indicator git_branch_status

vcs_init

PROMPT='$(cyan %~) $(yellow ⏾) ' # ⏾ 23fe
RPROMPT='$(git_branch_status)$vcs_info_msg_0_ $(git_status_info)$(git_stash_indicator)'

