set history=50
set showcmd
set showmatch
set incsearch
set hls
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set nowrap
set guifont=Courier\ 14
set tags=tags;/
set backspace=indent,eol,start
syntax on
set nu

set guicursor=i:ver10-iCursor

let g:xml_syntax_folding=1
let g:vim_json_syntax_conceal=0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
highlight Pmenu ctermbg=gray
au FileType xml setlocal foldmethod=syntax

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Termite and picom hacks:

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[6 q"
autocmd VimEnter * silent !picom-trans -c 95
autocmd VimLeave * silent !echo -ne "\e[1 q"
autocmd VimLeave * silent !picom-trans -c 80
augroup END


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'sukima/xmledit'
Plug 'mattn/emmet-vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'adelarsq/vim-matchit'
Plug 'elzr/vim-json'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()
