#!/usr/bin/env bash
# Symlink dotfiles into $HOME and (optionally) bootstrap tools.
# Usage: ./install.sh            # links + bootstrap
#        ./install.sh --links-only
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP="$HOME/.dotfiles-backup/$(date +%Y%m%d%H%M%S)"

# Paths relative to $HOME (and to this repo). Entries that don't exist in the
# repo yet are skipped with a notice, so this is safe to run mid-migration.
LINKS=(
  .zshrc .zsh_aliases .zprofile .zshenv .p10k.zsh
  .vimrc .gitconfig
  .doom.d
  .config/nvim .config/git/ignore .config/ghostty/config
  .ssh/config
  .claude/settings.json .claude/statusline.sh .claude/agents
)
for skill in "$DOTFILES"/.claude/skills/*/; do
  [ -d "$skill" ] && LINKS+=(".claude/skills/$(basename "$skill")")
done

link() {
  local rel="$1" src="$DOTFILES/$1" dst="$HOME/$1"
  if [ ! -e "$src" ] && [ ! -L "$src" ]; then
    echo "skipped ~/$rel (not in repo)"
    return
  fi
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    return
  fi
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mkdir -p "$(dirname "$BACKUP/$rel")"
    mv "$dst" "$BACKUP/$rel"
    echo "backed up ~/$rel -> $BACKUP/$rel"
  fi
  ln -s "$src" "$dst"
  echo "linked ~/$rel"
}

for rel in "${LINKS[@]}"; do link "$rel"; done
[ -d "$HOME/.ssh" ] && chmod 700 "$HOME/.ssh"

[ "${1:-}" = "--links-only" ] && exit 0

# Homebrew + packages
if ! command -v brew >/dev/null && [ ! -x /opt/homebrew/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file="$DOTFILES/Brewfile"

# nvm
if [ ! -d "$HOME/.nvm" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | PROFILE=/dev/null bash
fi

# Rust toolchain (.zshenv sources ~/.cargo/env)
if [ ! -d "$HOME/.cargo" ]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
fi

# Doom Emacs (then run: doom install)
if [ ! -d "$HOME/.emacs.d" ]; then
  git clone --depth 1 https://github.com/doomemacs/doomemacs "$HOME/.emacs.d"
fi

cat <<'MSG'

Done. Manual steps:
  - Secrets stay out of this repo: restore private/.secrets, ~/.pgpass,
    ~/.aws/credentials, ~/.authinfo.gpg from your password manager
  - SSH key: ssh-keygen -t ed25519, add to GitHub (ensure ~/.ssh/config points at it)
  - gh auth login
  - nvm install --lts; pyenv install 3.11
  - ~/.emacs.d/bin/doom install
  - Claude Code: install, then `claude` to log in
MSG
