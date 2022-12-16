# ----NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
  # ----Calling nvm use automatically in a directory with a .nvmrc file
  autoload -U add-zsh-hook
  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }
  add-zsh-hook chpwd load-nvmrc
  load-nvmrc
  # --END--Calling nvm use automatically in a directory with a .nvmrc file
# ----END-NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM----NVM

