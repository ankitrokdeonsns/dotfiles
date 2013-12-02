export CLICOLOR=1
export PS1="\[\e[0;36m\]\w % \[\e[m\]"
export PATH=$PATH:$HADOOP_HOME/bin
alias ls='ls --color'
LS_COLORS='di=34:fi=0:ln=32:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31'
export LS_COLORS

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
