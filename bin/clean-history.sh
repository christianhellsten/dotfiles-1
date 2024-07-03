#!/bin/zsh

# Backup current history
cp ~/.zsh_history ~/.zsh_history_backup

# Remove duplicates
awk '!seen[$0]++' ~/.zsh_history > ~/.zsh_history_temp

# Replace history file
mv ~/.zsh_history_temp ~/.zsh_history

# Reload history
fc -R ~/.zsh_history
