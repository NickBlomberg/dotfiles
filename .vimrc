set nocompatible
filetype off
set tabstop=4
set softtabstop=4
set expandtab
set cursorline		" Highlight the line the cursor is on
set lazyredraw		" Prevent unecessary redrawing
set showmatch		"Show matching brackets when one is highlighted
set relativenumber
let mapleader = "\<Space>"

" Install Plug when not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'gmarik/Vundle.vim'
Plug 'bling/vim-airline'
Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
Plug 'suan/vim-instant-markdown'
call plug#end()

"""" Theme """"

set t_Co=256
set background=dark
syntax enable

if (has("termguicolors"))
        set termguicolors
endif

colorscheme OceanicNext

filetype plugin indent on

"""" Airline configuration """"
set noshowmode				" Hide original status bar
set ttimeoutlen=50			" Prevents delay when switching modes
set laststatus=2
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0


""" Search improvements
set incsearch "Search while typing
set hlsearch "highlight matches

" Clear search highlights with \ <space>
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk


" Typing jk in insert mode escapes
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

au BufRead,BufNewFile *.md set filetype=markdown
