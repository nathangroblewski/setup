#!/bin/bash
#
# CRM .bash_profile Time-stamp: "2008-12-07 19:42"
#
# echo "Loading ${HOME}/.bash_profile"
source ~/.profile # get my PATH setup
source ~/.bashrc  # get my Bash aliases

export PS1="\[\033[38;5;168m\]--[\[$(tput bold)\]\[\033[38;5;160m\]\u\[$(tput sgr0)\]\[\033[38;5;214m\]@\[$(tput sgr0)\]\[\033[38;5;241m\]\H\[$(tput sgr0)\]\[\033[38;5;168m\]]\[\033[38;5;214m\]-\[\033[38;5;168m\][\[\033[38;5;118m\]\w\[\033[38;5;168m\]]\[\033[m\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"\")\[$PURPLE\]\$(parse_git_branch)\n\[\033[38;5;168m\]---●\[\033[38;5;160m\]\\$\[\033[38;5;15m\] \[$WHITE\]\[$RESET\]"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
  fi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PATH="$HOME/.jenv/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/nathan.groblewski/.sdkman"
[[ -s "/Users/nathan.groblewski/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/nathan.groblewski/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/sbin:$PATH"
 