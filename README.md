# Multi-platform Stowed Dotfiles

Commont across platforms stowed dotfiles.

// TODO: Add Makefile or justfile to init new machines or easier stow targets 

## Requirements

Ensure the system has `git` and `stow` installed.

## Usage

Stowing common platform files:

`stow -v --target $HOME <normal-package>`

`stow -v --no-folding --target $HOME tmux`

### Stowing dot-named files

Passing the `--dotfiles` argument to `stow` resulting in stowing `dot-scripts` as `.scripts`.

### Stow Only File Not Parent Directory

Add `--no-folding` to link a file inside a .directory here without linking the entire directory. Ex: Stow only .gpg-agent.conf from .gnupg and don't link entire .gnupg to here.
