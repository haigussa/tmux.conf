# tmux setup

## Install
```bash
brew install tmux
```

## Configure
```bash
mkdir -p ~/.config/tmux
```

Copy `tmux.conf` to `~/.config/tmux/tmux.conf`

## Verify
```bash
tmux kill-server  # if tmux is running
tmux
```

Test that `Ctrl-a` works as prefix (not `Ctrl-b`).

## Quick reference

| Keys | Action |
|------|--------|
| `Ctrl-a` | Prefix |
| `prefix + v` | Split vertical |
| `prefix + h` | Split horizontal |
| `prefix + r` | Reload config |
| `Shift + Left/Right` | Switch windows |

Mouse scrolling enabled.

## Reload config
```bash
tmux source-file ~/.config/tmux/tmux.conf
```

Or `prefix + r` from inside tmux.
