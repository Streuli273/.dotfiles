# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=5000
SAVEHIST=3000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/streuli/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#####################
####### START #######
#####################

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

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
antigen bundle rimraf/k

# themes
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_HOME_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='015'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_BACKGROUND='001'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='001'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='001'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='239'
POWERLEVEL9K_HISTORY_FOREGROUND='015'
POWERLEVEL9K_HISTORY_BACKGROUND='239'
POWERLEVEL9K_TIME_FOREGROUND='239'
POWERLEVEL9K_TIME_BACKGROUND='015'
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply


# THE THINGS
#aliases
alias ls='k -h'
alias la='k -ah'
unalias l 
unalias ll
unalias lsa
alias mkdir='mkdir -p'
unalias md
alias cat=ccat
alias grive='cd ~/media/drive && grive && cd ~'
alias update='pacaur -Syu'

#thefuck
eval $(thefuck --alias)

#ls colors
eval $(dircolors -b $HOME/.config/zsh/LS_COLORS1)


fortune -s | cowthink -f $(find /usr/share/cows -type f | shuf -n 1) | lolcat
