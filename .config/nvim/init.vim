" ------------------------------------------------------------
"
" | General Settings                                         |
" ------------------------------------------------------------
set nocompatible          " Don't make Vim vi-compatibile.
syntax enable             " Enable syntax highlighting.
set clipboard=unnamed     " Access the system clipboard.
set laststatus=2          " Enable statusbar
set noshowmode            " Don't show mode, status will show

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

" Plugins mannaged by vim-plug -- https://github.com/junegunn/vim-plug
" Plugins will be downloaded under the specified directory.
call plug#begin(stdpath('data') . '/plugged')

    Plug 'altercation/vim-colors-solarized'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'elzr/vim-json'
    Plug 'tpope/vim-sleuth'
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ------------------------------------------------------------
" | Color Settings                                           |
" ------------------------------------------------------------
set background=dark       " Use a dark background.

let g:lightline = { 'colorscheme': 'solarized' }

" Set custom configurations for when the
" Solarized theme is used from Vim's Terminal mode.
"
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

if !has("gui_running")
    set t_Co=256              " Enable full-color support.
    let g:solarized_contrast = "high"
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    let g:solarized_visibility = "high"
endif

colorscheme solarized     " Use custom color scheme.

" ------------------------------------------------------------
" | Key Mappings                                             |
" ------------------------------------------------------------
map <C-o> :NERDTreeToggle<CR>

