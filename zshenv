
#GO Path
export GOPATH=/usr/local/lib/go/

# Google Cloud SDK
GCLOUD=~/google-cloud-sdk
# The next line updates PATH for the Google Cloud SDK.
#source '/Users/vincent/google-cloud-sdk/path.zsh.inc'
# The next line enables bash completion for gcloud.
#source '/Users/vincent/google-cloud-sdk/completion.zsh.inc'

#Algorithms 4 Path
export ALGO4=~/workspace/algorithms

# Set the environment variable for the docker daemon
export DOCKER_HOST=tcp://

# path to Android SDK
ANDROID=${HOME}/developer/android-sdk

# path to Dart SDK
DART=${HOME}/developer/dart-sdk

# path to AWS CLI Tools
AWS=${HOME}/developer/aws

export GEM_HOME=/Users/vincent/.gem

# Add new paths to the PATHDIRS array
PATHDIRS=(
  #/usr/local/git/bin
  /usr/local/bin
  /usr/local/lib
  /usr/local/cassandra/bin
  /usr/local/mongodb/bin
  ${HOME}/local/bin
  ${ANDROID}/tools
  ${ANDROID}/platform-tools
  ${DART}/bin
  ${HOME}/.rbenv/bin
  ${GEM_HOME}/bin
  /usr/local/heroku/bin
  ${GOPATH}/bin
  ${AWS}/eb/macosx/python2.7
  #/Applications/Postgres.app/Contents/Versions/9.3/bin
  ${ALGO4}/bin
  ${HOME}/.dotfiles/bin
#  ${GCLOUD}/bin
  #$HOME/github/llvm-build/Debug+Asserts/bin
)

for dir in $PATHDIRS; do
  if [ -d $dir ]; then
    paths+=$dir:
  fi
done

export PATH=${paths}${PATH}

#alias bower='noglob bower'

alias goapp=${GCLOUD}/platform/google_appengine/goapp

# Node harmony support
# alias node='node --harmony'

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rbenv shim
#eval "$(rbenv init -)"


# z setup
#. /Users/vincent/local/bin/z.sh
  . ${HOME}/.dotfiles/z/z.sh


#function precmd () {
#  z --add "$(pwd -P)"
#}
