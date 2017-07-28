"
"  -----------------------------------
" |         gabriell's .vimrc         |
"  -----------------------------------
"

execute pathogen#infect()

" change shell so we don't bug fish
set shell=/bin/sh

" change tabs to spaces
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" show line number
set nu

" for when I type really fast
cab W w
cab Q q
cab Qa qa
cab QA qa
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

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable indentation matching for =>'s
filetype plugin indent on

