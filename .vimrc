
" ░░░██╗░░░██╗██╗███╗░░░███╗██████╗░░█████╗░
" ░░░██║░░░██║██║████╗░████║██╔══██╗██╔══██╗
" ░░░╚██╗░██╔╝██║██╔████╔██║██████╔╝██║░░╚═╝
" ░░░░╚████╔╝░██║██║╚██╔╝██║██╔══██╗██║░░██╗
" ██╗░░╚██╔╝░░██║██║░╚═╝░██║██║░░██║╚█████╔╝
" ╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░

" Plugin Manager
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

" Lightline Configuration
let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\               [ 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\     'filename': 'LightlineFilename',
\     'gitbranch': 'FugitiveHead',
\     'fileformat': 'LightlineFileformat',
\     'fileencoding': 'LightlineFileencoding',
\     'filetype': 'LightlineFiletype',
\   },
\   'tabline': {
\     'left': [ ['tabs'] ],
\     'right': [ ['close'] ]
\   },
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' }
\ }

" Enable the Lightline tabline
let g:lightline.enable = {
\   'tabline': 1,
\   'statusline': 1
\}

" Custom functions for Lightline components
function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? &filetype : ''
endfunction

" Git Integration
if exists('*fugitive#head')
  let g:lightline.component_expand = {
  \ 'gitbranch': 'fugitive#head'
  \ }
endif

" General settings
set noshowmode               " Don't show mode in command line, it's displayed by Lightline
set laststatus=2             " Always display the statusline
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set clipboard=unnamedplus
set cursorline
set ignorecase
set smartcase
set incsearch
set hlsearch
set wildmenu
set lazyredraw
set showcmd
set showmatch

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" FZF settings
set rtp+=~/.fzf
map <C-p> :Files<CR>

" GitGutter settings
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'

" IndentLine settings
let g:indentLine_char = '┆'

" Set color scheme
colorscheme nord
set background=dark
set termguicolors

