alias ls="ls -lah"
# Override vim since we can't replace it in OSX (WTF)
#alias vim='/usr/local/bin/vim'
alias vim='/usr/local/bin/nvim'
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
# Cleans the shit D-ocker leaves behind
alias docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '
alias start-postgres='nohup postgres -D /usr/local/var/postgres/ > /tmp/postgres.log &'
alias stop-postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

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

