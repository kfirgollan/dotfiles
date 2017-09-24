set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include colors
set rtp+=~/dotfiles/vim/colors

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

" Disable highlighting
map <leader><CR> :noh<CR>

" Paste mode
set pastetoggle=<leader>pp

" Wild menu settings for completion
set wildmenu
set wildmode=longest:full,full
set wildignore=*.swp,*.o,*.pyc,*.bak,*.gcno

" Errors window
map <F9> :cwindow <CR>
map <leader>ne :cn <CR>
map <leader>Ne :cp <CR>
map <leader>pe :cp <CR>
map <leader>Pe :cn <CR>

" Add powerline
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim

call plug#begin('~/.vim/plugged')

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim_kfir/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'

" Fast file opening
" Plug 'wincent/command-t'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" File explorer plugin
Plug 'scrooloose/nerdtree'
" Git support for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Status line plugin
Plug 'powerline/powerline'
Plug 'jlanzarotta/bufexplorer'
" Git plugin
Plug 'tpope/vim-fugitive'
" Ag search plugin
Plug 'ervandew/ag'
" Auto completion plugin
"Plug 'Valloric/YouCompleteMe'
"Plug 'ervandew/supertab'
" Auto commenting plugin
Plug 'tpope/vim-commentary'
" Surround text elemnts
Plug 'tpope/vim-surround'
" Taglist / outline
Plug 'majutsushi/tagbar'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" clang-format
Plug 'rhysd/vim-clang-format'
" PEP8 tool
" Plug 'andviro/flake8-vim'
" Code linting tool
Plug 'w0rp/ale'
" Rainbow colors for parantheses.
Plug 'luochen1990/rainbow'
" AsyncRun - run commands in async manner.
Plug 'skywind3000/asyncrun.vim'

Plug 'Chiel92/vim-autoformat'

" riv.vim - Viewing structured text on the web.
Plug 'Rykka/InstantRst'
Plug 'Rykka/riv.vim'

" SnipMate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Themes
Plug 'altercation/vim-colors-solarized'

call plug#end()
" call vundle#end()            " required
filetype plugin indent on    " required

" BufferExplorer
map <leader>o :BufExplorer<CR>

" FZF
map <C-f> :FZF<CR>

" NERDTree
map <leader>nn :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 60
let g:NERDTreeWinPos = "right"

" Tagbar
map <leader>ts :TagbarToggle<CR>

" Eclim
let g:EclimLocateFileNonProjectScope = 'ag'
let g:EclimCompletionMethod = 'omnifunc'

let g:SuperTabDefaultCompletionType = 'context'

" Enable mouse mode
set mouse=a

" Theme
set cursorline
syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" AsyncRun
augroup AsyncRunGroup
	autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END


" quick fix
augroup quickfix
	autocmd QuickFixCmdPost * botright copen 8
augroup END

" ZoomVim
map <C-w>z :ZoomWin<CR>

" === ale ===
" let g:ale_python_pylint_executable = $HOME .'/.virtualenvs/nvim3/bin/pylint'
let g:ale_linters = {
\   'python': ['pylint'],
\}
let g:ale_open_list = 0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" === rainbow ===
let g:rainbow_active = 1
