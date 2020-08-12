brew install postgresql@11 || true
brew install pspg || true # Pager for psql

# Fix gem install pg
brew link postgresql@11 --force
