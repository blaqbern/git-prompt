setopt PROMPT_SUBST

FPATH=$FPATH:./funcs

autoload blue cyan magenta yellow green red
autoload -Uz vcs_info

precmd_vcs_info() {
  vcs_info
}

# git branch
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats " $(cyan %b)"
zstyle ':vcs_info:git:*' actionformats " $(cyan %b) $(magenta '(%a)')"

# git status visualization
function git_status_info () {
  git_status="$(git status 2> /dev/null)"

  status_icons=''
  if [[ $git_status =~ 'Changes to be committed:' ]]; then
    status_icons="$(green ◉)" # ◉ 25c9
  fi

  if [[ $git_status =~ 'Changes not staged for commit:' ]]; then
    status_icons+="$(yellow ◉)"
  fi

  if [[ $git_status =~ 'Untracked files:' ]]; then
    status_icons+="$(red ◉)"
  fi

  if [[ -n $status_icons ]]; then
    echo " $status_icons"
  fi
}

# git stash indicator
function git_stash_indicator () {
  if [[ -f .git/refs/stash ]]; then
    echo " ↪" # ↪ 21aa
  fi
}

PROMPT='$(cyan %~) $(yellow ⏾) ' # ⏾ 23fe
RPROMPT='$vcs_info_msg_0_$(git_status_info)$(git_stash_indicator)'
