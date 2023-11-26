" ====================
" Configurações Gerais
" ====================
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set nocompatible
filetype off
filetype plugin indent on


set background=dark
colorscheme molokai

set number relativenumber
set cursorline
set hlsearch

" ====================
" Plugins with VimPlug
" ====================
call plug#begin()
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" =======================
" Configurações do VimTEX
" =======================
source ~/.vim/expansoes/vimtex_config.vim

" ==========================
" Configurações do Ultisnips
" ==========================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" ==================
" FILETYPE SELECTION
" ==================

command Latex execute 'source ~/.vim/expansoes/latex.vim'



" =========
" FUNCTIONS
" =========

function TextModeOn()
    setlocal spell spelllang=pt_br
    set textwidth=80
    inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
endfunction

function TextModeOff()
    setlocal nospell 
    set textwidth=0
endfunction


" ========
" COMMANDS
" ========

command Texton call TextModeOn()
command Textoff call TextModeOff()


" ========
" MAPPINGS
" ========

map <C-s> :w<CR>
map <F6> :w<CR>:!clear<CR>:!make build<CR>
map <F5> <F6>:!make run<CR>

map <F12> :vsp ~/.vimrc<CR>
map <F1> :vsp makefile<CR>

map <C-BS> vbd
imap <C-BS> <ESC>vbda

" Insert Mode Movements
imap <c-h> <ESC>i
imap <c-j> <ESC>ja
imap <c-k> <ESC>lki
imap <c-l> <ESC>la
