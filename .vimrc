set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include colors
set rtp+=~/.vim_kfir/colors

set nowrap        " don't wrap lines
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Syntax highlighting
syntax enable

" Show line with cursor
set cursorline

" Terminal colors support
set t_Co=256

" Always show status line
set laststatus=2

" change the mapleader from \ to ,
let mapleader=","

" No vim backup files
set nobackup
set noswapfile

" Relative line numbers
set relativenumber

" Tabs
map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Paste mode
set pastetoggle=<leader>pp

" Errors window
map <F9> :cwindow <CR>
map <leader>ne :cn <CR>
map <leader>Ne :cp <CR>
map <leader>pe :cp <CR>
map <leader>Pe :cn <CR>

" Add powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim_kfir/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'powerline/powerline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

" BufferExplorer
map <leader>o :BufExplorer<CR>

" CommandT
map <C-f> :CommandT<CR>

" NERDTree
map <leader>nn :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" Theme
set cursorline
syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
