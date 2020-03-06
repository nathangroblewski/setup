alias py='python3'
alias cls='clear ; ls'
alias o='open'
alias pip='pip3'
alias ls='ls -CF'
alias listening='lsof -PiTCP -sTCP:LISTEN'
alias dc='docker-compose'
alias containers='docker ps --format "{{.Names}}"'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/php5/bin:$PATH
export PS1="\[\033[38;5;168m\]--[\[$(tput bold)\]\[\033[38;5;160m\]\u\[$(tput sgr0)\]\[\033[38;5;214m\]@\[$(tput sgr0)\]\[\033[38;5;241m\]\H\[$(tput sgr0)\]\[\033[38;5;168m\]]\[\033[38;5;214m\]-\[\033[38;5;168m\][\[\033[38;5;118m\]\w\[\033[38;5;168m\]]\[\033[m\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"\")\[$PURPLE\]\$(parse_git_branch)\n\[\033[38;5;168m\]---●\[\033[38;5;160m\]\\$\[\033[38;5;15m\] \[$WHITE\]\[$RESET\]"
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
  fi
