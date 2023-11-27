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
colorscheme monokai

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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
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

" ======================
" Configurações NerdTree
" ======================
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" =====================
" Configurações Airline
" =====================
let g:airline_theme='deus'




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
