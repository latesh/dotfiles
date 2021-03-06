# misc
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
# ssh
alias sp="ssh -D 7345 bookeepr"
alias s="ssh"
alias t="vendor/bin/codecept"

# Basic directory operations
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# rails
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
#alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# vagrant
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vh="vagrant halt"
alias vres="vagrant resume"
alias vsus="vagrant suspend"
alias vrel="vagrant reload"

# commands starting with % for pasting from web
alias %=' '
