# dotfiles

Personal configuration files.

## Setup on a new machine

### 1. Generate SSH key and add to GitHub
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub
```

Add the public key at https://github.com/settings/keys

### 2. Clone this repo
```bash
git clone git@github.com:haigussa/tmux.conf.git ~/dotfiles
```

### 3. Create symlinks
```bash
# tmux
mkdir -p ~/.config/tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# nvim (when added)
# ln -s ~/dotfiles/nvim ~/.config/nvim

# ghostty (when added)
# ln -s ~/dotfiles/ghostty ~/.config/ghostty
```

## Adding a new config

1. Create folder: `mkdir ~/dotfiles/appname`
2. Copy config: `cp -r ~/.config/appname/* ~/dotfiles/appname/`
3. Remove original: `rm -rf ~/.config/appname`
4. Symlink: `ln -s ~/dotfiles/appname ~/.config/appname`
5. Push:
```bash
   cd ~/dotfiles
   git add .
   git commit -m "add appname config"
   git push
```

## Current configs

- **tmux** — prefix is `Ctrl-a`, vim-style navigation and copy mode
