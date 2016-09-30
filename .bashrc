
#Command aliases. Because lazy
#debian 
alias ag="apt-get"
alias ap="aptitude"

#arch linux
alias p="sudo pacman"
alias ya="yaourt"


# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'

eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Nvidia Jetson TK1 cuda stuff
#export PATH=/usr/local/cuda-6.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#export LD_LIBRARY_PATH=/usr/local/cuda-6.5/lib:
#export __GL_PERFMON_MODE=1

#ARM cross compiler 
#export PATH=${PATH}:/root/arm-stuff/gcc-arm-linux-gnueabihf-4.7/bin

#root PS1
#export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;33m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$\[$(tput sgr0)\]"

#regular user PS1
#export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput sgr0)\]\[\033[38;5;32m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\\$\[$(tput sgr0)\]"
