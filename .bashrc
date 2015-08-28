if [ -f /etc/bashrc ]; then
	./etc/bashrc
fi
complete -cf sudo
complete -cf man
set -o vi

export TERM=xterm-256color
#fix line wrap on window resize
#check the window size after each command and, if necessary,
#update the values LINES and COLUMNS.
shopt -s checkwinsize
#autocd
shopt -s autocd

alias mkdir='mkdir -p -v'
alias less='/usr/share/vim/vim74/macros/less.sh'
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias ls='ls -hF --color=auto'
## Pacman aliases ## {{{
#if necessary, replace 'pacman' with your favorite AUR helper and adapt the commands accordingly
# default action  - install one or more packages
alias pac="sudo /usr/bin/pacman -S"   
# '[u]pdate'    - upgrade all packages to their newest version
alias pacu="sudo /usr/bin/pacman -Syu"   
# '[r]emove'    - uninstall one or more packages
alias pacr="sudo /usr/bin/pacman -Rns"    
# '[s]earch'    - search for a package using one or more keywords
alias pacs="/usr/bin/pacman -Ss"    
# '[i]nfo'    - show information about a package
alias paci="/usr/bin/pacman -Si"    
# '[l]ist [o]rphans'  - list all packages which are orphaned
alias paclo="/usr/bin/pacman -Qdt"    
# '[c]lean cache' - delete all not currently installed package files
alias pacc="sudo /usr/bin/pacman -Scc"    
# '[l]ist [f]iles'  - list all files installed by a given package
alias paclf="/usr/bin/pacman -Ql"   
# 'mark as [expl]icit'  - mark one or more packages as explicitly installed 
alias pacexpl="/usr/bin/pacman -D --asexp"  
# 'mark as [impl]icit'  - mark one or more packages as non explicitly installed
alias pacimpl="/usr/bin/pacman -D --asdep"  
# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
# }}}

#extract() {
#    local c e i
#
#    (($#)) || return
#
#    for i; do
#        c=''
#        e=1
#
#        if [[ ! -r $i ]]; then
#            echo "$0: file is unreadable: \`$i'" >&2
#            continue
#        fi
#
#        case $i in
#            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
#                   c='bsdtar xvf';;
#            *.7z)  c='7z x';;
#            *.Z)   c='uncompress';;
#            *.bz2) c='bunzip2';;
#            *.exe) c='cabextract';;
#            *.gz)  c='gunzip';;
#            *.rar) c='unrar x';;
#            *.xz)  c='unxz';;
#            *.zip) c='unzip';;
#            *)     echo "$0: unrecognized file extension: \`$i'" >&2
#                   continue;;
#        esac
#
#        command $c "$i"
#        e=$?
#    done
#
#    return $e
#}
cl() {
  if [[ -d "$1" ]]; then
      cd "$1"
      ls
  else
      echo "bash: cl: '$1': Directory not found"
  fi
}
note () {
  # if file doesn't exist, create it
  if [[ ! -f $HOME/.notes ]]; then
    touch $HOME/.notes
  fi

  if [[ $# -eq 0 ]]; then
    # no arguments, print file
    cat $HOME/.notes
  elif [[ "$1" == "-c" ]]; then
    # clear file
    echo "" > $HOME/.notes
  elif [[ "$1" == "-h" ]]; then
    echo "Add note to .notes.\
Script itself can be found in .bashrc(10.12.13)\
PARAMETERS\
  -h - display this help\
  -c - clear .notes 
"
  else
    # add all arguments to file
    echo "$@" >> $HOME/.notes
  fi
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
