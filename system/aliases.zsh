alias ls="ls -lah"
alias vim='/opt/homebrew/bin/nvim'
alias vi='/opt/homebrew/bin/nvim'
# What's my IP?
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ipaddr='wanip && ipconfig getifaddr en1'
# Recursive grep
alias rgrep="grep -r"
alias rt="bundle exec rails test"
alias rs="bundle exec rspec"
alias be="bundle exec"
# Fix ack
alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/local/bin/ack'
alias less='less -r'
# Silver searcher pager!!!
alias ag='ag --pager "less -r"'
alias search-replace='find "${PATH}" -type f -name "${NAME}" -print0 | xargs -0 sed -i "" -e "s/${SEARCH}/${REPLACE}/g"'
# OSX version of: sudo netstat | grep LISTEN
alias netstat-listen='lsof -iTCP -sTCP:LISTEN'
# IOS Simulator
alias ios-simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'
# Cleans the shit D-ocker leaves behind
alias docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '
alias start-postgres='nohup /opt/homebrew/opt/postgresql@12/bin/postgres -D /opt/homebrew/var/postgresql@12 > /tmp/postgres.log &'
alias stop-postgres='pg_ctl -D /opt/homebrew/opt/postgresql@12/bin/postgres stop -s -m fast'

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

