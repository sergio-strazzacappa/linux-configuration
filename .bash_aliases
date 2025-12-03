alias rm='rm -v --interactive=always'
alias rmdir='rmdir -v'
alias mkdir='mkdir -v'
alias chmod='chmod -v'
alias cp='cp -v'
alias bcat='batcat'
alias free='free -h'
alias lsblk_use='lsblk -o NAME,FSUSED,FSAVAIL,FSSIZE,SIZE,FSUSE%,MOUNTPOINT'

###################################################################
############################## lsd alias ##########################
###################################################################
alias ls='lsd -h --group-directories-first'
alias la='lsd -a'
alias ll='lsd -l'
alias lla='lsd -al'
alias lt='lsd --tree'

###################################################################
############################## GIT ################################
###################################################################
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

###################################################################
############################ PYTHON ###############################
###################################################################
alias python='python3'
