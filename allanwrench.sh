cd ~
cd -P web
cd ..

alias a-jq='    (echo .allanwrench) | xargs jq -r '
#alias a-cd='   cd "$( a-jq .root )" 2>&1 > /dev/null'
alias a-cd='    cd  XXXXXX'
alias a-grep='  grep -r  -n '
alias agrep='   grep -r  -n '
alias lgrep='   grep -rl -n '
#alias lfind='  find * -type f | grep -E --color --'
alias afind='   ~/allanwrench/afind.sh'
alias a-find='  ~/allanwrench/afind.sh'
alias lfind='   ~/allanwrench/afind.sh'
alias a-where=' a-cd; cd site; grep postgres -B10 -A3 config/config.xml'

alias a-util-dumpdbindex='(a-cd; pg_dump --data-only --inserts -U postgres XXXXXX > $( a-jq .dbindex) )'
alias a-dbgrep='(a-cd; echo $( a-jq .dbindex) ) | xargs grep --color'


PS1="$ "


