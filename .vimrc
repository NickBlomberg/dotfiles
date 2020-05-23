set nocompatible
set tabstop=4                   " Width of hard tapstop
set expandtab                   " Insert spaces whenever tab is pressed
set cursorline                  " Highlight the line the cursor is on
set lazyredraw                  " Prevent unecessary redrawing
set ttyfast                     " Fast terminal connection
set showmatch                   " Show matching brackets when one is highlighted
let mapleader="\<Space>"        " Reassign the leader key
set noshowmode                  " Hide the default status line

"""""""""""""""""""""""""""
""" Plug Plugin Manager """
"""""""""""""""""""""""""""

" Install if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"""""""""""""""
"""" Theme """"
"""""""""""""""

set background=dark
set t_Co=256

if (has("termguicolors"))
    set termguicolors
endif

let g:onedark_terminal_italics=1
let g:onedark_hide_endofbuffer=1
colorscheme onedark

"""""""""""""""""
""" Lightline """
"""""""""""""""""

let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }

" Clear search highlights with <space> <space>
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Typing jk in insert mode escapes
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" NERDTree
map <C-o> :NERDTreeToggle<CR>

" fzf
map ; :Files<CR>

" Editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
