# Multi-platform Stowed Dotfiles

## Requirements

Ensure the system has `git` and `stow` installed.

## Usage

Maintain copies of dot files or config files in directories per architecture or some machine identifier. These files will get symlinked to a specified target directory upon running the `stow` command. Maintain nested directory structure as desired outcome in this repository. Stow works on packages (directories), so it will link everything in the desired packages.

```
(REPO): stow [args] ARCH -t TARGET
REPO/ARCH/.somefile -> TARGET/.somefile
REPO/ARCH/.config/file -> TARGET/.config/file
```

### Stowing 

from the base of this repository.

**Stow all `darwin-arm64` files:**

`stow -v --dotfiles darwin-arm64 -t $HOME`

**Stow `testor` package from `darwin-arm64`:**

`stow -v testor -d darwin-arm64 -t $HOME`

### Stowing Globally Ignored Filed

Add --dotfiles to link dot-file to .file. For example: `.gitignore` is globally ignored by stow, so it can be named dot-gitignore and stowed by passing the `--dotfiles` argument to `stow` resulting in stowing it as `.gitignore`.
