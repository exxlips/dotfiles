# exxlips/dotfiles

## Good evening, viewers! This is my personal dotfile repository and collection on GitLab, hope you will like it!!~

> NOTE: This repository is considered "BETA". Until this mark would be deleted, it would update nearly every hour and day. I won't forget.

## What's on here?!

- **OS:** NixOS 26.11 _(unstable)_
- **WM:** Niri
- **Shell:** Fish **(+ starship)**
- **Editor:** Helix **(my beloved)**
- **Terminal:** Kitty
- **Desktop-Shell:** Noctalia-Shell _(V5)_

## Hosts:

- `torontik`: My space heater x1 carbon gen 8
- `boxik`: My grandpa toilet hp proone g1 400 aio **(its just old)**

### Requirements:

- `git`
- a working nixOS system

Clone the `dotfiles`:

```
$ git clone https://github.com/exxlips/dotfiles.git
$ cd dotfiles
```

### The files n' folders:

- **./modules** - The modules folder
- **./flake.nix** - The coolest `flake.nix`
- **./flake.lock** - The lock of the `flake.nix`
- **./README.md** - ... This file you're reading right now.
- **./.sops.yaml** - The `sops-nix` file
- **./hosts** - The computer folder
- **./secrets** - The `sops-nix` folder **(secrets)**
- **./wallpapers** - The cool wallpaper folder

### Aliases:

- **ll** = `eza --tree`
- **sops-edit** = `sudo -E SOPS_AGE_KEY_FILE=/var/lib/sops-nix/keys.txt sops secrets/api-keys.yaml`

### [insert end]
