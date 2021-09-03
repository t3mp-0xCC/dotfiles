" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>

nnoremap <S-k> 10<UP>
nnoremap <S-j> 10<DOWN>
nnoremap <S-h> 10<LEFT>
nnoremap <S-l> 10<RIGHT>
vnoremap <S-k> 10<UP>
vnoremap <S-j> 10<DOWN>
vnoremap <S-h> 10<LEFT>
vnoremap <S-l> 10<RIGHT>

" Insert Mode
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting                                                                                                                                 
set encoding=utf-8
" edita setting
set number
set splitbelow
set splitright
set noequalalways
set wildmenu
" cursorl setting
set ruler
set cursorline
" tab setting
set expandtab
set tabstop=2
set shiftwidth=2

" color
set t_Co=256
syntax on
colorscheme Benokai

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" load .toml
let s:dein_dir = expand('~/.config/nvim/dein')
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml('~/.config/nvim/dein/plugins.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein/lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif


