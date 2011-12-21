PATH=${HOME}/.my/bin:/usr/local/bin:$PATH
EDITOR=vim
PAGER=/usr/local/vimpager
alias less=$PAGER
set -o noclobber
alias engine='play -c2 -n synth pinknoise band -n 280 80 band -n 60 25 gain +20 treble +40 500 bass -3 20 flanger 4 2 95 50 .3 sine 50 lin'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias git=/usr/local/git/bin/git

