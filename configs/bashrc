##############################################################################
# Custom Bash Configuration File
##############################################################################


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases #####################################################################
# General
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -v'
alias ping='ping -c 5'
alias grep='grep --color=auto'
alias ls='ls -hF --color=auto'

# Safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# Colors ######################################################################
if [[ ${EUID} == 0 ]] ; then
    PS1="\[\e[01;31m\]\u@\h\[\e[0m\]\[\e[00;31m\]:[\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;31m\]]:[\[\e[0m\]\[\e[00;33m\]\$?\[\e[0m\]\[\e[00;31m\]]\[\e[0m\]\[\e[00;37m\]\n\[\e[0m\]\[\e[00;31m\]>>\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
else
    PS1="\[\e[01;32m\]\u@\h\[\e[0m\]\[\e[00;32m\]:[\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;32m\]]:[\[\e[0m\]\[\e[00;33m\]\$?\[\e[0m\]\[\e[00;32m\]]\[\e[0m\]\[\e[00;37m\]\n\[\e[0m\]\[\e[00;32m\]>>\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
fi

# Completion ##################################################################
complete -cf sudo
complete -cf man
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


# Custom binary directories ###################################################
PATH=$PATH:/home/edcg/Binaries
export PATH
