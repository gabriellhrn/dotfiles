"
"  -----------------------------------
" |         gabriell's .vimrc         |
"  -----------------------------------
"

" required for Vundle
set nocompatible
filetype off

" include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself (required)
Plugin 'VundleVim/Vundle.vim'

" initialize plugins using Vundle
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dikiaap/minimalist'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on

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

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq
set modeline

syntax on

colorscheme elflord
set background=dark

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\  /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Open file where left off
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" vim-gitgutter
set updatetime=250

" fzf
set rtp+=~/.fzf

" vim-airline
let g:airline_theme='bubblegum'

set backspace=2

" Open NERDTree with C-n
map <C-n> :NERDTreeToggle<CR>

" Use ag instead of ack when it exists
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

nmap <F8> :TagbarToggle<CR>
