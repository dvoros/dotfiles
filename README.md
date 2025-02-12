Prerequisites:
- install RobotoMono from: https://www.nerdfonts.com/font-downloads
- install `brew`
- install `kitty` (on Mac)
- install aerospace (on Mac)

```
cd ~
git clone git@github.com:dvoros/dotfiles.git
ln -s dotfiles/.vimrc
ln -s dotfiles/.tmux.conf
printf "\nsource ~/dotfiles/.shrc" >> .zshrc
mkdir .vimswap
```

Then pick and choose from the Makefile targets.
