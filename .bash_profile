# Allows Docker containers to connect to localhost
# See https://www.shanestillwell.com/2016/10/03/create-a-local-https-proxy-server/
export LOCAL_IP=172.16.123.1

# Simple Git aliases for shell only.
alias s='git status'
alias a='git add $1'
alias c='git commit -m $1'
alias d='git diff $1'
alias co='git checkout $1'
alias b='git branch'
alias push='git push'
alias pull='git pull'

# Common npm commands
alias build='npm run build'
alias dev='npm run dev'
alias test='npm run test'
alias clean='npm run clean'

# Simple server - serves files from current directory
# Note: renamed to http.server in Python 3
alias sserver="python -m SimpleHTTPServer $1"

# Checkout new branch - sync local and remote
create_branch() {
  git checkout dev
  git pull
  git checkout -b "$1"
  git push origin "$1"
  git branch --set-upstream-to=origin/"$1" "$1"
}

# Delete branch - local and remote
delete_branch() {
  git push -d origin "$1"
  git branch -D "$1"
}
