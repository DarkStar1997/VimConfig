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

let g:xml_syntax_folding=1
let g:vim_json_syntax_conceal=0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
au FileType xml setlocal foldmethod=syntax

colorscheme molokai
let g:airline_theme='dark'
highlight Pmenu ctermbg=black

" Open nerdtree by default when opening a folder

let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Termite and picom hacks:

"augroup myCmds
"au!
"autocmd VimEnter * silent !echo -ne "\e[6 q"
"autocmd VimEnter * silent !picom-trans -c 95
"autocmd VimLeave * silent !echo -ne "\e[1 q"
"autocmd VimLeave * silent !picom-trans -c 80
"augroup END


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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
