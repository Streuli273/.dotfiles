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

# ANTIGEN

export ADOTDIR=$HOME/.config/zsh/antigen

source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh

# plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle thefuck
antigen bundle extract
antigen bundle git

# themes
antigen theme bhilburn/powerlevel9k powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_BACKGROUND='001'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='239'
POWERLEVEL9K_HISTORY_FOREGROUND='015'
POWERLEVEL9K_HISTORY_BACKGROUND='239'
POWERLEVEL9K_TIME_FOREGROUND='239'
POWERLEVEL9K_TIME_BACKGROUND='015'

antigen apply


# THE THINGS
#aliases
alias ls='ls -lh --color=auto'
alias la='ls -lAh --color=auto'
unalias l 
unalias ll
unalias lsa
alias mkdir='mkdir -p'
alias yaourt='yaourt --noconfirm'
unalias md

#thefuck
eval $(thefuck --alias)

#ls colors
eval $(dircolors -b $HOME/.config/zsh/LS_COLORS)
