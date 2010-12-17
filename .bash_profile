########
# PATH #
########

PATH=$PATH:/usr/local/mysql/bin:/usr/local/sbin

#####################
# ju custom aliases #
#####################

alias ls="ls -lGF"
alias date_iso='date +"%Y-%m-%d"'
alias quicklook="qlmanage -p" # Displays QuickLook for specified file
alias unrar-ju="unrar e -ad -kb"
alias cemacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'

#ruby aliases
alias irb-ju="irb --readline -r irb/completion --prompt inf-ruby"
alias ri-ju="ri -f bs"

###################
# git bash prompt #
###################

source ~/.git-completion.sh

case "$TERM" in
xterm*)
        PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
        ;;
*)
        PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '
        ;;
esac

source ~/.git-aliases.sh

#######
# RVM #
#######

# RVM - must be after PATH declarations
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
