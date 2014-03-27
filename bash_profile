export CLICOLOR=1
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
scm_ps1() {
    local s=
    if [[ -d ".svn" ]] ; then
        s=\(svn:$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\)
    else
        s=$(__git_ps1 "(git:%s)")
    fi
    echo -n "$s"
}
export PS1="\[\e[0;36m\]\w \$(scm_ps1) % \[\e[m\]"
LS_COLORS='di=34:fi=0:ln=32:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31'
export LS_COLORS
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export HADOOP_HOME='/Users/ankit/setups/hadoop-2.0.6-alpha'
export PATH=$PATH:$HADOOP_HOME/bin
alias po="cd ~/work/tw/gap/po/trunk"
alias mp="cd ~/work/tw/gap/mp"
alias ct="cd ~/work/tw/gap/cookbook\ testing"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
