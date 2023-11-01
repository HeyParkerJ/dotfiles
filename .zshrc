# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bish you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# prevent emacs tramp from barfing on startup
[[ "$TERM" == "dumb" ]] &&
  echo "[ZSHRC] Setting as dumb terminal (likely for Tramp)..." &&
  unsetopt zle &&
  unsetopt prompt_cr &&
  unsetopt prompt_subst &&
  # unfunction precmd &&
  # unfunction preexec &&
  PS1='$ ' &&
  # gls respects the --dired flag, which dired + tramp uses.
  alias ls='gls' &&
  return

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set main user so that agnoster doesn't waste space
DEFAULT_USER="parker.johnson"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
)

if [ "$HOST" = 'Parkers-MacBook-Pro.local' ]; then
  export MACHINE_TYPE="personal"
elif [ "$HOST" = 'my-work-laptop' ]; then
  export MACHINE_TYPE="work"
else
  echo "UNKNOWN HOSTNAME: Many scripts will not execute properly"
fi

source $ZSH
echo "Sourced $ZSH"

source ~/.bash_aliases && echo "Sourced ~/.bash_aliases"
source ~/.bashrc && echo "Sourced ~/.bashrc"
test -f ~/dotfiles/private/.secrets && source ~/dotfiles/private/.secrets && echo "Sourced dotfiles/private/.secrets"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

#the .npm-global thing is because I set up npm in a different way on my new work machine 09/04/2019
#export PATH="/Users/parker.johnson/.npm-global/bin:/usr/local/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# added by Snowflake SnowSQL installer v1.2
export PATH=/Users/parker.johnson/Applications/SnowSQL.app/Contents/MacOS:$PATH

# since I have so many emacs versionso that could get picked up....
# This one is for a custom built one that gets put in applications
# export EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs

# Commenting because I think the brew emacs formula already has this as 'emacs'
# export EMACS=/opt/homebrew/opt/emacs-mac
export EMACS=/opt/homebrew/bin/emacs


# initialize autocompletion
autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

complete -o nospace -C /usr/local/bin/terraform terraform
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme


# This is needed for nvm setup
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source ~/dotfiles/nvm_autoswitch.sh

alias pip='python3 -m pip'
alias python='python3'

test -f /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme && source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
test -f /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme && source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

export PATH="/Users/parker/.local/bin:$PATH"
