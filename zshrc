FPATH=$FPATH:./funcs

autoload blue cyan magenta yellow green red
autoload -Uz vcs_info

precmd_vcs_info() {
  vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats " $(blue %b)"
zstyle ':vcs_info:git:*' actionformats " $(blue %b) $(magenta '(%a)')"

PROMPT="$(cyan %~) $(blue ⌁) "
RPROMPT=$vcs_info_msg_0_
