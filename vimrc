" ------------------------------------------------------------
" | General Settings                                         |
" ------------------------------------------------------------
set nocompatible          " Don't make Vim vi-compatibile.
syntax enable             " Enable syntax highlighting.

filetype plugin indent on " Enable file type detection.

set autoindent            " Copy indent to new line.

set backspace=indent      " 
set backspace+=eol        " Allow 'backspace' in insert mode.
set backspace+=start      "  

set ignorecase            " Ignore case in search.
set smartcase             " Override 'ignorecase' if search pattern
                          " contains uppercase characters.

set ruler                 " Show cursor position.

set tabstop=4             "
set shiftwidth=4          " Tab settings. Tabs are spaces.
set softtabstop=4         "
set expandtab             " 

set hlsearch              " Enable search highlighting.
set incsearch             " Highlight search pattern as it is typed

set number                " Show line numbers

" ------------------------------------------------------------
" | Plugins                                                  |
" ------------------------------------------------------------

" Use Vundle to manage the Vim plugins.
" https://github.com/VundleVim/Vundle.vim

filetype off              " required by Vundle

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/plugins/Vundle.vim

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

call vundle#begin("~/.vim/plugins")
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'altercation/vim-colors-solarized'
    Plugin 'ekalinin/Dockerfile.vim'
    Plugin 'elzr/vim-json'

call vundle#end()

" Re-enable file type detection. Disabled for Vundle above.
filetype plugin indent on    

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



" ------------------------------------------------------------
" | Color Settings                                           |
" ------------------------------------------------------------
set t_Co=256              " Enable full-color support.
set background=dark       " Use a dark background.

" Set custom configurations for when the
" Solarized theme is used from Vim's Terminal mode.
"
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

if !has("gui_running")
    let g:solarized_contrast = "high"
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    let g:solarized_visibility = "high"
endif

colorscheme solarized     " Use custom color scheme.


