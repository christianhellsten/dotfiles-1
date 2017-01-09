alias ls="ls -larth"
# Override vim since we can't replace it in OSX (WTF)
alias vim='/usr/local/bin/vim'
# What's my IP?
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
# Recursive grep
alias rgrep="grep -r"
# Fix ack
alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/local/bin/ack'
# Silver searcher pager!!!
alias ag='ag --pager "less -r"'
# OSX version of: sudo netstat | grep LISTEN
alias netstat-listen='sudo lsof -i -n -P | grep TCP'
# IOS Simulator
alias ios-simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'

#
# Ruby dependency hell
#
#alias cucumber='bundle exec cucumber'
#alias rspec='bundle exec rspec'
#alias rake='bundle exec rake'
#alias rails='bundle exec rails'

#alias l="ls -lAh --color"
#alias ll="ls -l --color"
#alias la='ls -A --color'
#alias ack=ack-grep

