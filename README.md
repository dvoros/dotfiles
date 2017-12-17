```
cd ~
git clone git@github.com:dvoros/dotfiles.git
ln -s dotfiles/.vimrc
ln -s dotfiles/.tmux.conf
if [ -f .bashrc ]; then printf "\nsource ~/dotfiles/.shrc" >> .bashrc; fi
if [ -f .zshrc ]; then printf "\nsource ~/dotfiles/.shrc" >> .zshrc; fi
mkdir .vimswap
```
