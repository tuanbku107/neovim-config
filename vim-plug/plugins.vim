" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim',{'branch': 'release'}

call plug#end()
set number
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let mapleader =","
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> f :Prettier<CR>
nnoremap <silent> <F8> :NERDTree<CR>
nnoremap <silent> <C-w> :tabclose<CR>
nnoremap <silent> <F9> :NERDTreeFind<CR>
nnoremap <silent> <C-d> :t.<CR>
nnoremap <silent> <F2> :GitGutterLineHighlightsToggle . <CR>

