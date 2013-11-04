alias cookiecurl='curl -b cookies.txt -c cookies.txt '
#alias less='vim -u /usr/share/vim/vim73/macros/less.vim'
export LC_CTYPE=sv_SE.UTF-8
export EDITOR=/usr/bin/vim
export CC=gcc-4.2
export PATH="$PATH:~/Applications/maven/bin:/opt/app/instance/current/bin"
export PATH="$PATH:/usr/local/share/npm/bin"
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r18
export PATH="$PATH:~/Applications/maven/bin:/opt/app/instance/current/bin"
source ~/.local/bin/bashmarks.sh
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/active
export ANDROID_HOME="/usr/local/Cellar/android-sdk/active"
export NODE_PATH="/usr/local/lib/node_modules"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_12.jdk/Contents/Home
export GRADLE_HOME=/usr/local/Cellar/gradle/1.5/libexec
export LIQUIBASE_HOME=/usr/local/Cellar/liquibase/3.0.1/libexec
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
export PATH=$HOME/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# A two-line colored Bash prompt (PS1) with Git branch and a line decoration
# which adjusts automatically to the width of the terminal.
# Screenshot: http://img194.imageshack.us/img194/2154/twolineprompt.png
# Michal Kottman, 2012
 
RESET="\[\033[0m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\033[0;33m\]"
 
PS_LINE=`printf -- '- %.0s' {1..200}`
function parse_git_branch {
  PS_GIT_BRANCH=''
  PS_FILL=${PS_LINE:0:$COLUMNS}
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  PS_GIT_BRANCH="(${ref#refs/heads/}) "
}
PROMPT_COMMAND=parse_git_branch
PS_INFO="$GREEN\u@\h$RESET:$BLUE\w"
PS_GIT="$YELLOW\$PS_GIT_BRANCH"
PS_TIME="\[\033[\$((COLUMNS-10))G\] $RED[\t]"
export PS1="\${PS_FILL}\[\033[0G\]${PS_INFO} ${PS_GIT}${PS_TIME}\n${RESET}\$ "

[[ -s /Users/erikthorselius/.nvm/nvm.sh ]] && . /Users/erikthorselius/.nvm/nvm.sh # This loads NVM

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto'
    eval `gdircolors ~/.dircolors`
fi

alias ls='gls $LS_OPTIONS -hF'
alias ll='gls $LS_OPTIONS -lhF'
alias l='gls $LS_OPTIONS -lAhF'
