# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# prevent emacs tramp from barfing on startup
[[ "$TERM" == "dumb" ]] &&
  unsetopt zle &&
  unsetopt prompt_cr &&
  unsetopt prompt_subst &&
  PS1='$ ' &&
  # gls respects the --dired flag, which dired + tramp uses.
  alias ls='gls' &&
  return

export EDITOR='nvim'
export EMACS=/opt/homebrew/bin/emacs

# PATH
export PATH="$HOME/.local/bin:$HOME/.emacs.d/bin:/opt/homebrew/opt/libpq/bin:$PATH"

# Aliases and local secrets (private/ is gitignored)
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
[ -f ~/dotfiles/private/.secrets ] && source ~/dotfiles/private/.secrets

alias zshconfig="vim ~/.zshrc"
alias pip='python3 -m pip'
alias python='python3'

# Prompt: run `p10k configure` or edit ~/.p10k.zsh.
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Completion
autoload -U compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# History
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
HISTFILE=$HOME/.zhistory
SAVEHIST=100000
HISTSIZE=99999

# Arrow keys search history by prefix
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
