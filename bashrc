PS1='${debian_chroot:+($debian_chroot)}\[\033[00;32m\]\u\e[m:\[\033[01;34m\]\w\$\[\033[00m\] '

export MARKPATH=$HOME/.marks

export PATH=$PATH:~/bin

function jump { 
   cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}

function mark { 
   mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}

function unmark { 
   rm -i $MARKPATH/$1 
}
function marks {
   ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

