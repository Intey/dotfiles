# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks2"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[[ -s /home/intey/.autojump/etc/profile.d/autojump.sh ]] && source /home/intey/.autojump/etc/profile.d/autojump.sh
alias mkdir='mkdir -p -v'
# alias less='/usr/share/vim/vim74/macros/less.sh'
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias ls='ls -hF --color=auto'
alias egrep='egrep --color'
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
alias ff="firefox"
alias chrom="chromium"
alias mntvfat="sudo mount -t vfat -o utf8"
alias bank="source /home/intey/projects/b2env/bin/activate; cd /home/intey/projects/bank-10205; export BANK='{\"dev\":\"true\", \"apps\":[\"django_nose\",\"rest_framework_swagger\", \"debug_toolbar\"]}'"
alias literal="cd /home/intey/projects/python/literal; source ../literal-env/bin/activate"

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
    echo "Add note to .notes."\
    "Script itself can be found in .(\$shell)rc. (10.12.13)\n"\
    "PARAMETERS\n"\
    "-h - display this help\n"\
    "-c - clear .notes\n"
  else
    # add all arguments to file
    echo "$@" >> $HOME/.notes
  fi
}

source $ZSH/oh-my-zsh.sh
#autojump configuration
[[ -s /home/intey/.autojump/etc/profile.d/autojump.zsh ]] && source /home/intey/.autojump/etc/profile.d/autojump.zsh
autoload -U compinit && compinit -u

export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.rvm/gems/ruby-2.1.0/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export TERM=xterm-256color
source ~/.als.sh
export LANG=en_US.UTF-8
