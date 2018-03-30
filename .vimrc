" deactivate vi compatibility mode
set nocp

" wrap long lines
set wrap

" do not cut words on linebreak
set linebreak

" line numbers
set number

" puts a straight line under the current edited line
set cursorline

" more like less
" set more

" scroll down/up
set scrolloff=5

" show commands being typed
set showcmd

" set history length
set history=1000

" always show statusline
set laststatus=2

" show current mode in statusline
set showmode

" keep the comumn position of cursor
set nostartofline

" disable startup message
set shortmess+=I

" interactive searching
set incsearch

" search highlighting
set hlsearch

" by default :substitute flag 'g' is on (all matches in a line are substituted)
set gdefault

" enable filetype
filetype on

""" Text formatting

" preserve indentation
set autoindent
" smart backspace
set backspace=indent,eol,start
" indents <Tab> as spaces
set expandtab
" by default ignore case
set ignorecase
" sensitive with uppercase
set smartcase
" tab to 0,4,8 etc.
set smarttab
" <Tab> as 4 space indent
set tabstop=4
" set the <TAB> to count as one single char
set softtabstop=-1
" use tabstop value as shiftwidth
set shiftwidth=0

""" Keybindings
" copy to system clipboard
noremap <Leader>y "+y
set clipboard=unnamedplus
