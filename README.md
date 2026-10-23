# My dotfiles git repository.

## This repository contains my personal dotfiles, used for everyday use!~

> NOTE: Do not blindly `git clone` this repository. It contains hardware-specific settings that your device may not support. Explore the files first and remove the things you dont need from my hardware. I'm also not responsible for anything that you've done wrong. Your hands don't depend on mine.

## What's on here?!
* **OS:**: NixOS 26.11
* **WM:** Niri
* **Shell:** Fish **(+ starship)**
* **Editor:** Helix **(my beloved)**
* **Terminal:** Kitty
* **Desktop-Shell:** Noctalia-Shell *(V5)*

## Hosts:
* `torontik`: My beloved x1 carbon gen 8
* `boxik`: My grandpa toilet hp proone g1 400 aio **(its just really old)**

### Requirements:
* `git` (the only mandatory one)
* a working nix system


Clone the `dotfiles`:

```
$ git clone https://gitlab.com/groups4042743/dotfiles.git
$ cd dotfiles
```

### The files n' folders:

* `./modules` - The modules folder
* `./flake.nix` - The coolest flake
* `./flake.lock` - The lock of the flake
* `./README.md` - ... This file you're reading right now.
* `./.sops.yaml` - The sops-nix file
* `./hosts` - The hosts folder
* `./secrets` - The sops-nix folder (secrets)
* `./wallpapers` - The cool wallpaper folder

### Aliases:
* **ll** = `eza --tree`
* **sops-edit** = `sudo -E SOPS_AGE_KEY_FILE=/var/lib/sops-nix/keys.txt`

### [insert end] 
