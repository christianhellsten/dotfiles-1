brew cask install adoptopenjdk
brew cask install adoptopenjdk8
brew install jenv
brew install maven

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

jenv enable-plugin export
exec $SHELL -l

jenv add $(/usr/libexec/java_home)
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
