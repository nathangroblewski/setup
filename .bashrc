# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$(brew --prefix)/bin/:$PATH"

alias cls='clear ; ls'
alias o='open'
alias pip='pip3'
alias ls='ls -CF'
alias listening='lsof -PiTCP -sTCP:LISTEN'

# git aliases
alias gco='git checkout'
alias gcm='git commit -m'
alias gcb='git checkout -b'
alias purge-branches='git branch --merged | grep -v "master" >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches'

# dev aliases
alias kc='kubectl'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --user-data-dir=remote-debug-profile'

function kubeDelete() {
    minikube stop
    minikube delete
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

killport() { lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9 }


