set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=pt_br
 setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/syntastic'
Plugin 'preservim/nerdtree'
"Plugin 'KabbAmine/yowish.vim'
"Plugin 'foxbunny/vim-amber'
Plugin 'sheerun/vim-polyglot'
Plugin 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plugin 'vim-airline/vim-airline'
Plugin 'tribela/vim-transparent'
call vundle#end()
filetype plugin indent on

set termguicolors
set background=dark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:lightline = {
      \ 'colorscheme': 'spaceduck',
      \ }

colorscheme spaceduck

set number
" Nota; No futuro, fazer <C-f> alternar entre os focus
nnoremap <C-f> :NERDTreeFocus<CR>
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

"    let g:yowish = {}
"    let g:yowish.option1 = 'foo'
"    let g:yowish.option2 = 0
"
set noshowmode 
