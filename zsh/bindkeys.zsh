# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey "^K"      kill-whole-line                      # ctrl-k
bindkey "^R"      history-incremental-search-backward  # ctrl-r
bindkey "^A"      beginning-of-line                    # ctrl-a
bindkey "^E"      end-of-line                          # ctrl-e
bindkey "[B"      history-search-forward               # down arrow
bindkey "[A"      history-search-backward              # up arrow
bindkey "^P"      history-search-backward              # ctrl-p
bindkey "^D"      delete-char                          # ctrl-d
bindkey "^F"      forward-char                         # ctrl-f
bindkey "^B"      backward-char                        # ctrl-b

bindkey '^[^[[D'  backward-word
bindkey '^[^[[C'  forward-word
bindkey '^[[5D'   beginning-of-line
bindkey '^[[5C'   end-of-line
bindkey '^[[3~'   delete-char
bindkey '^[^N'    newtab
bindkey '^?'      backward-delete-char
# NOTE: broken on Catalina: bindkey -v   # Default to standard vi bindings, regardless of editor string
