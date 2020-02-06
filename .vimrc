set history=50
set showcmd
set showmatch
set incsearch
set hls
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set guifont=Courier\ 14
set tags=tags;/
set backspace=indent,eol,start
syntax on
set nu
:map <F5> :e \| syn on <CR>
:map <F6> :highlight Normal ctermbg=Black ctermfg=White guifg=White \| syn off \| set mouse=a <CR>
:map <F7> :set mouse=a <CR>
:map <F9> :set mouse=i <CR>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
"Plug 'xavierd/clang_complete'
Plug 'jiangmiao/auto-pairs'
Plug 'justmao945/vim-clang'

call plug#end()
