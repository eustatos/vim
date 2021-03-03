# Set up Vundle:
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'itchyny/lightline.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

set nocompatible
set smartindent
syntax enable
filetype plugin on
filetype plugin indent on
set noswapfile

set path+=**
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=16 guibg=lightgrey

set number relativenumber

"Mode Cursor Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" Enable cursor line position tracking:
set cursorline
" Remove the underline from enabling cursorline:
" highlight clear CursorLine
" Set line numbering to red background:
" highlight CursorLineNR ctermbg=1

" Enable cursor column position tracking:
set cursorcolumn
highlight CursorColumn ctermfg=NONE ctermbg=DarkGrey cterm=bold guifg=white guibg=yellow gui=bold

# lightline settings
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
