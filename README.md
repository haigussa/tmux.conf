# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/) and [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle).

Each top-level folder (except `.git`) is a stow package. The folder structure inside mirrors the path relative to `~/`.

## New machine setup

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install oh-my-zsh (not available via brew)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 3. Set up SSH key for GitHub
ssh-keygen -t ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
# Add key at github.com/settings/keys

# 4. Clone and install
cd ~
git clone git@github.com:haigussa/dotfiles.git
brew bundle --file=~/dotfiles/Brewfile

# 5. Stow all configs
cd ~/dotfiles
for d in */; do stow "$d"; done
```

## Day-to-day

**Add a brew package:**
```bash
brew install <package>
brew bundle dump --file=~/dotfiles/Brewfile --force
```

**Add a new config to dotfiles:**
```bash
mkdir -p ~/dotfiles/<name>/<path-relative-to-home>
mv ~/<path-to-config> ~/dotfiles/<name>/<path-relative-to-home>/
cd ~/dotfiles && stow <name>
```

**Remove a stow package:**
```bash
cd ~/dotfiles && stow -D <name>
```

**Sync to another machine:**
```bash
cd ~/dotfiles && git pull && brew bundle --file=~/dotfiles/Brewfile
for d in */; do stow "$d"; done
```
