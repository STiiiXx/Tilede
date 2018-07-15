" set termguicolors
set guicursor=

" leave insert mode quickly
"if ! has('gui_running')
  "set ttimeoutlen=10
  "augroup FastEscape
    "autocmd!
    "au InsertEnter * set timeoutlen=0
    "au InsertLeave * set timeoutlen=1000
  "augroup END
"endif

""" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Super Searching
Plugin 'kien/ctrlp.vim'

" Terminal colorscheme
Plugin 'jnurmine/Zenburn'

" Syntax highlighting
Plugin 'vim-syntastic/syntastic'

" PEP 8 checking
Plugin 'nvie/vim-flake8'

" compiling and running code
Plugin 'vim-scripts/SingleCompile'
nmap <c-c> :SCCompile<cr>
nmap <c-r> :SCCompileRun<cr>

" git wrapper
Plugin 'tpope/vim-fugitive' 

" enables comment toggeling
Plugin 'scrooloose/nerdcommenter'
inoremap qq <C-O>:call NERDComment("n", "Toggle")<CR>
nnoremap qq :call NERDComment("n", "Toggle")<CR>

" pairs and deletes brackets and strings together
Plugin 'jiangmiao/auto-pairs'

" enables use of youcompleteme and ultisnips together
Plugin 'ervandew/supertab'

" enables a tree
Plugin 'scrooloose/nerdtree'
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" lightweight powerline statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='tilede'
let g:airline_powerline_fonts = 1

" code completition
Plugin 'Valloric/YouCompleteMe.git'
" youcomplete me configurations
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-j>'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" deactivate vi compatibility mode
set nocp

" wrap long lines
set wrap

" do not cut words on linebreak
set linebreak

" line numbers
set number

" allow cursor placing behind last character
set virtualedit=onemore

" puts a straight line under the current edited line
" set cursorline

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

""" Text formatting

let python_highlight_all=1

" syntax highlighting
syntax on
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
noremap y "+y
set clipboard=unnamedplus

" Save all the time
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" redo
map r :redo<CR>

" split navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" theme
colorscheme zenburn
hi CursorLineNr term=bold ctermfg=white ctermbg=black
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE
hi LineNr term=bold ctermbg=black
set cursorline
