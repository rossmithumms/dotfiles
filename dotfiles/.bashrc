# https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Setting JAVA_HOME for command line usage to Oracle Java SE JDK 8
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

# Vim colors in tmux mode
alias tmux="TERM=screen-256color-bce tmux"

