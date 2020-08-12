# HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS # Do not write events to history that are duplicates of previous events
setopt APPEND_HISTORY # Add comamnds as they are typed, don't wait until shell exit
setopt HIST_EXPIRE_DUPS_FIRST # when trimming history, lose oldest duplicates first
setopt SHARE_HISTORY # imports new commands and appends typed commands to history
setopt HIST_VERIFY # don't execute, just expand history
setopt EXTENDED_HISTORY # add timestamps to history
setopt INC_APPEND_HISTORY # adds history incrementally
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
