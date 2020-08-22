mkdir ~/Library/KeyBindings/
cp macos/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict

# LOL, .DS_STORE, LOL
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
