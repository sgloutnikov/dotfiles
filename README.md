# Multi-platform Stowed Dotfiles

Common and specific platform stowed dotfiles.

// TODO: Add Makefile or justfile to init new machines or one-off setup command.

## Naming Methodology

* Repository Root -- Common platform `$HOME` files. 
* `_platform_` -- Specific platform `$HOME` files.
* `__directory__` -- Common or specifice platform `/directory` files.

## Requirements

Ensure the system has `git` and `stow` installed.

## Usage

Clone repo: `git clone git@github.com:sgloutnikov/dotfiles.git ~/.stowfiles`

### $HOME files:

Treat root of repository or `_platform_` as `$HOME` (`--target` path). Add `<stow-package>` folders maintaining `$HOME` as parent structure inside.

`stow -v --target $HOME <stow-package>`

`stow -v --no-folding --target $HOME tmux`

### Non-$HOME files:

Treat `__directory__` as `/directory` (`--target` path). Add `<stow-package>` folders maintaining `/directory` as parent structure inside.

 ```bash
 cd _linux_/__etc__
 sudo stow -v --no-folding --target /etc <stow-package>
 ```

## Stow Only Files Not Parent Directory

Add `--no-folding` to link a file(s) inside a stow package without linking the entire directory. Ex: Stow only .gpg-agent.conf from .gnupg and don't link entire .gnupg to here. Another example is tmux, to only stow config without downloaded plugins. Useful for tools that produce additional artifacts which do not need to be saved in this repository.

## Stowing dot-named files

Passing the `--dotfiles` argument to `stow` resulting in stowing `dot-scripts` as `.scripts`.