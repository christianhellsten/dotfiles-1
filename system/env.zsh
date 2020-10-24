export EDITOR='nvim'

# No "bundle exec". Requires Rubygems 2.2. Crap doesn't work...
# export RUBYGEMS_GEMDEPS=-
#
export PATH=~/bin:$PATH

# Legacy stuff, LOL
#export JAVA_HOME=`/usr/libexec/java_home -v 14`

# Go
export GOPATH="$HOME/Documents/projects/golang"
# export GOPATH="$HOME/golang"
export PATH="./bin:$GOPATH/bin:$PATH"

# No duplicates in history
export HISTCONTROL=ignoreboth:erasedups

# Tell fzf to use ag and respect .gitignore
export FZF_DEFAULT_COMMAND='ag -g ""'

# Fix readline on OSX, see e.g.:
# https://github.com/guard/guard/wiki/Add-Readline-support-to-Ruby-on-Mac-OS-X
RUBY_CONFIGURE_OPTS='--with-readline-dir=`brew --prefix readline`'

if [ "$TMUX" = "" ]; then TERM=xterm-256color; fi
