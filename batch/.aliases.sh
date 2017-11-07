#!/bin/bash

alias apti = apt-get install
alias aptr = apt-get autoremove
alias apts = apt-cache search

alias aptf = apt-file 
alias aptfl = apt-file list
alias aptfs = apt-file search

alias mkdir='mkdir -p -v'
alias less='/usr/share/vim/vim74/macros/less.sh'
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias ls='ls -hF --color=auto'
