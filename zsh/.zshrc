#==================================================
# variables
#==================================================
# zsh dot directory
export ZDOTDIR=$HOME/.config/zsh

# user defined autoload
export FPATH=$ZDOTDIR/autoload:$FPATH

# save history file to
export HISTFILE=$ZDOTDIR/.zsh-history

# fcitx5 required variables
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# clash for linux required variables
export http_proxy=http://127.0.0.1:7890
export https_proxy=https://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

#==================================================
# options
#==================================================
# disable dup history command
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt APPENDHISTORY

#==================================================
# autoload
#==================================================
# enable color for prompt
autoload -U colors && colors

# alias to evince
autoload -U pdf

#==================================================
# prompt
#==================================================
export PROMPT=" %F{yellow}%B%1d %(?.%F{green}.%F{red}) %f%b"

#==================================================
# alias
#==================================================
alias ll="ls -al --color"

#==================================================
# plugins
#==================================================
# auto suggestion
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=25

# syntax highlight
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#==================================================
# auto launched program
#==================================================
# neofetch
