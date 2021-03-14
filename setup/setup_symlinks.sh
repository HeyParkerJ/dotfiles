# .zshrc
mv ~/.zshrc ~/.zshrc.backup
ln -s ~/dotfiles/.zshrc ~/

# .bash_aliases
mv ~/.bash_aliases ~/.bash_aliases.backup
ln -s ~/dotfiles/.bash_aliases ~/

# .bash_profile
mv ~/.bash_profile ~/.bash_profile.backup
ln -s ~/dotfiles/.bash_profile ~/

# .bashrc
mv ~/.bashrc ~/.bashrc.backup
ln -s ~/dotfiles/.bashrc ~/

# .vimrc
mv ~/.vimrc ~/.vimrc.backup
ln -s ~/dotfiles/.vimrc ~/

# Doom
ln -s ~/dotfiles/.doom.d ~/
mv ~/.doom.d ~/.doom.d.backup

# default-packages
ln -s ~/dotfiles/default-packages ~/.nvm/
