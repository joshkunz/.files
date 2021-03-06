CLICOLOR=1
LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

##  PATH   ##
# Some more manual path suff
PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Add my binfiles to the path
PATH="$HOME/bin:$PATH"

if [ `uname -s` = "Darwin" ]; then
    PATH="$PATH:/usr/local/share/npm/bin"
    PATH="$PATH:/Applications/Racket v5.3.5/bin"
    PATH="$PATH:/usr/local/mercury-14.01/bin"
    MANPATH="$MANPATH:/usr/local/mercury-14.01/man"
fi

## Keyboard Rebinds ##

bind \cf forward-word
bind \cb backward-word

## DEFAULTS ##

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export EDITOR=vim

LANG="en_US.UTF-8"
PS1="[\e[0;36m\#\e[m] \T (\e[0;37m\H\e[m) \e[1;31m\u\e[m:\w\n\$ "

## Song Formatting ##
export MPC_FMT=" [%position%.] [[%artist% - ]%title%[ ([%track% ]on %album%)]|[%file%]"

##  ALIASES  ##

alias ls='ls -GFh'
alias la='ls -a'
alias ll='ls -la'

alias up='cd ..'

alias less='less -R'
alias grep='grep --color'

alias weechat='weechat-curses'
alias irc='weechat'

alias sudo='sudo -E'

alias mpc="mpc -f \"$MPC_FMT\""
alias vbox="vboxmanage"

alias editor="$EDITOR"

alias irkt="racket -il xrepl"

## MAC Specific

if [ `uname -s` = "Darwin" ]; then
    alias vlc="vlcwrap"
fi

##  FUNCTIONS   ##

function vkill {
    vboxmanage controlvm $1 poweroff
}

function vstart { 
    vboxmanage startvm $1
}

# grep the path for something
function psearch {
    echo $PATH | tr ':' '\0' | xargs -0 ls | grep -Ei $1
}

ENV_PATH="$HOME/code/.virtualenvs"

# Activate a virtualenv
function vactivate {
    source $ENV_PATH/$1/bin/activate
}
