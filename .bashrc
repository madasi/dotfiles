# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

#History maintenance
HISTFILESIZE=10000
HISTSIZE=5000
PROMPT_COMMAND="history -a"
HISTTIMEFORMAT='%F %T '
export HISTSIZE HISTFILESIZE PROMPT_COMMAND HISTTIMEFORMAT
shopt -s histappend


# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/bin/virtualenvwrapper_lazy.sh
