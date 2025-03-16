# Multi-platform Stowed Dotfiles

Common across platforms stowed dotfiles. For specific platforms use `_platform_` directories. Treat each stow package (tool) directory as `$HOME` path.

// TODO: Add Makefile or justfile to init new machines or one-off setup command.

## Requirements

Ensure the system has `git` and `stow` installed.

## Usage

Stowing common platform files:

`stow -v --target $HOME <normal-package>`

`stow -v --no-folding --target $HOME tmux`

### Stow Only File Not Parent Directory

Add `--no-folding` to link a file inside a directory here without linking the entire directory. Ex: Stow only .gpg-agent.conf from .gnupg and don't link entire .gnupg to here. Another example is tmux, to only stow config without downloaded plugins.

### Stowing dot-named files

Passing the `--dotfiles` argument to `stow` resulting in stowing `dot-scripts` as `.scripts`.