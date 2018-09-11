" If you do not know a vim key name, enter insert mode by typing 'i' in normal
" mode, then press Ctrl+Shift+k and then your key or key-combination and you should get the name.
" Ctrl, Alt can not be mapped alone, as they are function keys

set nocompatible              " be iMproved, required
filetype off                  " required 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" statusline
Plugin 'itchyny/lightline.vim'
set laststatus=2

" theme
Plugin 'jnurmine/Zenburn'
colorscheme zenburn
highlight Normal ctermbg=NONE

" bracket and quote operations
Plugin 'tpope/vim-surround'

" bracket pairer
Plugin 'jiangmiao/auto-pairs'

" comment toggling
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" code completition
Plugin 'Valloric/YouCompleteMe.git'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_after_completition=1

" code snippets
Plugin 'sirver/UltiSnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredi

" filetype plugin
filetype on

" line numbers
set number

" syntax highlighting
syntax enable

" wrap long lines
set wrap

" do not cut words on linebreak
set linebreak

" allow cursor to be placed behind the last character
set virtualedit=onemore

" highlight line of cursor
highlight CursorLineNr term=bold ctermfg=white
highlight LineNr term=bold ctermbg=black
set cursorline

" scroll up / down
set scrolloff=5

" show commands being typed
set showcmd

" set history length
set history=10

" keep the column position of cursor when scrolling
set nostartofline

" disable startup message
set shortmess+=I

" interactive searching
set incsearch

" search highlighting
set hlsearch

" by default : substitute flag 'g' is on (all matches are substituted)
set gdefault

""" text formatting """
" preserve intendation
set autoindent

" smart backspace
set backspace=indent,eol,start

" indents <Tab> as spaces
set expandtab

" by default ignores case
set ignorecase

" sensitive with uppercase
set smartcase

" tab to 4, 8, 12 etc.
set smarttab

" <Tab> as 4 spaces indent
set tabstop=4

" set the tab to count as one single char
set softtabstop=-1

" use tabstop value as shiftwidth
set shiftwidth=0

""" custom maps """
" clear all maps
" autocmd VimEnter * mapclear | mapclear <buffer> | mapclear! | mapclear! <buffer>

" auto comment
autocmd VimEnter * nmap <silent> # :call NERDComment("n", "Toggle")<CR>

" remap r to redo instead of replace
autocmd VimEnter * map r :redo<CR>

" easy saving
autocmd VimEnter * map <c-s> :w<CR>
autocmd VimEnter * vmap <c-s> <Esc><c-s>
autocmd VimEnter * imap <c-s> <Esc><c-s>gv

" easy quitting (Save and quit all)
autocmd VimEnter * map <c-q> :wqa<CR>

" copy to system clipboard
autocmd VimEnter * noremap y "+y
set clipboard=unnamedplus

" quick tab movements (<<4<Left> and >>4<Right> make sure to move the cursor
" with the tab)
autocmd VimEnter * map <S-Tab> <<4<Left>
autocmd VimEnter * imap <S-Tab> <C-d>
autocmd VimEnter * map <Tab> >>4<Right>

" Remove hjkl bindings
autocmd VimEnter * map h <Nop>
autocmd VimEnter * map j <Nop>
autocmd VimEnter * map k <Nop>
autocmd VimEnter * map l <Nop>

let python_highlight_all=1
