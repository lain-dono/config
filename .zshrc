
source /etc/profile
source ~/.profile

case $TERM in
 *xterm*|rxvt|(dt|k|E|a)term*) export TERM=xterm-256color;  export color_prompt=yes ;;
 linux|screen(-bce|.linux)) ;;
esac

#
# Oh My ZSH
#

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#ZSH_TMUX_AUTOSTART=true

#DEFAULT_USER="lain"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

if [[ "$color_prompt" == 'yes' ]]; then
	ZSH_THEME="agnoster"
	ZSH_THEME="ys"
else
	ZSH_THEME="fox"
	ZSH_THEME="ys"
fi

ZSH_THEME="my-ys"

#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmuxinator tmux common-aliases colorize cp vi-mode go history colored-man sudo)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


#
# My
#



#разукрашиваем ls и автодополнение
#export LS_COLORS='no=00;37:fi=00;37:di=01;36:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.btm=01;31:*.sh=01;31:*.run=01;31:*.tar=33:*.tgz=33:*.arj=33:*.taz=33:*.lzh=33:*.zip=33:*.z=33:*.Z=33:*.gz=33:*.bz2=33:*.deb=33:*.rpm=33:*.jar=33:*.rar=33:*.jpg=32:*.jpeg=32:*.gif=32:*.bmp=32:*.pbm=32:*.pgm=32:*.ppm=32:*.tga=32:*.xbm=32:*.xpm=32:*.tif=32:*.tiff=32:*.png=32:*.mov=34:*.mpg=34:*.mpeg=34:*.avi=34:*.fli=34:*.flv=34:*.3gp=34:*.mp4=34:*.divx=34:*.gl=32:*.dl=32:*.xcf=32:*.xwd=32:*.flac=35:*.mp3=35:*.mpc=35:*.ogg=35:*.wav=35:*.m3u=35:';
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export EDITOR=vim
export LESSCHARSET=UTF-8

#[[ -x $(whence -p most) ]] && export PAGER=$(whence -p most)
#export PAGER=more
export PAGER=less

if [ -f ~/.aliases ]; then
	#. ~/.aliases
fi

alias gti='git'
compdef _git gti=git

alias ll='grc ls -lFh --color=yes'
compdef _ls ll=ls

alias slow='ponysay -b unicode -f $HOME/ponysay-chars/slowpoke.pony '

#alias wtf='dmesg'
#alias onoz='cat /var/log/errors.log'
alias rtfm='man'

alias :3='echo'
alias visible='echo'
alias invisible='cat'
alias moar='more'
alias tldr='less'
alias alwayz='tail -f'

alias icanhas='mkdir'
alias gimmeh='touch'
alias donotwant='rm'
alias dontwant='rm'
alias dowant='cp'
alias gtfo='mv'
alias nowai='chmod'

alias hai='cd'
alias iz='ls'
#alias plz='pwd'
alias ihasbucket='df -h'

alias inur='locate'
alias iminurbase='finger'

alias btw='nice'
alias obtw='nohup'

#alias nomz='ps aux'
#alias nomnom='killall'

alias byes='exit'
alias cya='reboot'
alias kthxbai='halt'

alias pwned='ssh'

#alias hackzor='git init'
#alias rulz='git push'
#alias bringz='git pull'
#alias chicken='git add'
#alias oanward='git commit -m'
#alias ooanward='git commit -am'
#alias letcat='git checkout'
#alias violenz='git rebase'

