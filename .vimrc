set nocompatible " be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'rking/ag.vim'
Plugin 'gcmt/taboo.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'Yggdroot/indentLine'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-scripts/conque-shell'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'FrigoEu/psc-ide-vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'ElmCast/elm-vim'
Plugin 'sheerun/vim-polyglot'



" All of your Plugins must be added before the following line
call vundle#end() " required
filetype on
filetype plugin indent on " required

syntax on

set backspace=indent,eol,start

"set background=dark
"colorscheme solarized

set t_Co=256
colorscheme monokai

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set numberwidth=1
set relativenumber
set hlsearch
set path+=**
set wildmenu
set hidden

let mapleader="-"
let maplocalleader=","

"indentLine plugin
let g:indentLine_enabled = 1
let g:indentLine_char = '|'


noremap <leader><c-u> <esc> viw U i
noremap <leader><c-u> viwU
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>[ <i'<esc>ea'
inoremap <leader><leader> <esc>
"nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-b> :BuffergatorOpen<cr>
"nnoremap <c-b> :CtrlPMRU<cr>
"last buffer

augroup BgHighlight
autocmd!
autocmd WinEnter * set cul
autocmd WinLeave * set nocul
augroup END
augroup comment
autocmd!
autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>
autocmd FileType html nnoremap <buffer> <leader>c I<!-- <esc>A -->
augroup END
"augroup filetype_html
" autocmd!
" autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
"augroup END


nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
noremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
autocmd VimEnter * cd %:p:h

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" ag is fast enough that CtrlP doesn't need to cache
"let g:ctrlp_use_caching = 0
"vim-javascriot
"set foldmethod=syntax
"monokai turn on italic

let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
set guifont=Consolas:h11

" Code Folding
"syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
"setlocal foldmethod=syntax
"setlocal foldlevel=99
set foldmethod=syntax
set foldlevelstart=99
let javaScript_fold=1     

" JavaScript
"search highlighted
vnoremap // y/<C-R>"<CR>

"keep cursor centered
set scrolloff=999
set ignorecase
set smartcase
nnoremap H 10k
nnoremap L 10j
nnoremap <silent> = :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> + :exe "resize " . (winheight(0) * 2/3)<CR>
set winheight=50
"set winminheight=10
set noeol

let purescript_indent_if = 3
let purescript_indent_case = 5
let purescript_indent_let = 4
let purescript_indent_where = 6
let purescript_indent_do = 3
let purescript_indent_in = 1
let purescript_indent_dot = v:true

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0

"vim-elm settings
let g:elm_jump_to_error = 0
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

