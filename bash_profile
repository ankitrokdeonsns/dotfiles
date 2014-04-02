export CLICOLOR=1
if [ -f /usr/local/Cellar/etc/bash_completion ]; then
    . /usr/local/Cellar/etc/bash_completion
fi
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    . /usr/share/git-core/contrib/completion/git-prompt.sh
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
export LS_COLORS='di=34:fi=0:ln=32:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31'
alias ls="ls --color"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
