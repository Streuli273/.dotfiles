# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/archvm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#####################
####### START #######
#####################

# THE THINGS
#aliases


#thefuck
eval $(thefuck --alias)

# ANTIGEN

export ADOTDIR=$HOME/.config/zsh/antigen

source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh

# plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle thefuck
antigen bundle extract

# themes
antigen theme bhilburn/powerlevel9k powerlevel9k
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
export POWERLEVEL9K_STATUS_VERBOSE=false
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
export POWERLEVEL9K_DIR_BACKGROUND='001'
export POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='015'
export POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='239'
export POWERLEVEL9K_HISTORY_FOREGROUND='015'
export POWERLEVEL9K_HISTORY_BACKGROUND='239'
export POWERLEVEL9K_TIME_FOREGROUND='239'
export POWERLEVEL9K_TIME_BACKGROUND='015'

antigen apply
