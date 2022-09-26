brew install postgresql@12 || true
brew install pspg || true # Pager for psql

# Fix gem install pg
brew link postgresql@12 --force
# Pager for psql
brew install pspg
