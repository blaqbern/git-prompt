setopt PROMPT_SUBST

fpath=( ./zshfn "${fpath[@]}" )

autoload cyan yellow

source vcs_init
source git_status_badges
source git_stash_badge
source git_branch_status

PROMPT="$(cyan %~) $(yellow ⏾) "
RPROMPT='$(git_branch_status)${vcs_info_msg_0_}$(git_status_badges)$(git_stash_badge)'
