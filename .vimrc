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
Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-sensible'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

"""" Theme """"

set t_Co=256
set background=dark

if (has("termguicolors"))
        set termguicolors
endif

let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
colorscheme onedark

set noshowmode
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

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
