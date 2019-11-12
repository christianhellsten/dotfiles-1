# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gs='git status -sb'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push'
alias gc='git commit'
alias gac='git add . && git commit'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gpr='git pull --prune'
alias gb='git branch'
