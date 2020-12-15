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

# Color please
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias l.='ls -d .* --color=auto'

# Dotfiles repo
# Based on https://www.atlassian.com/git/tutorials/dotfiles
# which is based on https://news.ycombinator.com/item?id=11070797
alias mydotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

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
