# git config pull.rebase true
# git config rebase.autoStash true
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
git config --global url.ssh://git@gitlab.com/.insteadOf https://gitlab.com/
go env -w GOPRIVATE="gitlab.com/christianhellsten,bitbucket.org/christianhellsten,github.com/christianhellsten"
# Remember GIT_TERMINAL_PROMPT=1 too, LOL
