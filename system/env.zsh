export EDITOR='vim'
# No "bundle exec". Requires Rubygems 2.2
#export RUBYGEMS_GEMDEPS=-

# Legacy stuff, LOL
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Fix readline on OSX, see e.g.:
# https://github.com/guard/guard/wiki/Add-Readline-support-to-Ruby-on-Mac-OS-X
RUBY_CONFIGURE_OPTS='--with-readline-dir=`brew --prefix readline`'

if [ "$TMUX" = "" ]; then TERM=xterm-256color; fi
