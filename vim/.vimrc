"
"  -----------------------------------
" |         gabriell's .vimrc         |
"  -----------------------------------
"

execute pathogen#infect()

" Mudar o shell para não bugar no fish
set shell=/bin/sh

" Altera o 'tabeamento' do vim
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" Número de linha
set number

" Pra quando digitar muito rapido
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab Wqa wqa
cab WQa wqa
cab WQA wqa

set wildmenu

" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq
set nocompatible
set modeline

syntax on

" colorscheme monokai
" set background=light

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\  /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Show me a ruler
set ruler

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable indentation matching for =>'s
filetype plugin indent on

