set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" Fix ~0[[STR]]1~ bug
" One can also call printf "\e[?2004l"
" https://github.com/vim/vim/issues/1404#issuecomment-274723175
set t_BE=

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
" Note that this is bit conflicts with tmux-navigation plugin thus it was
" removed.
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

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
" Editor config support
Plug 'editorconfig/editorconfig-vim'

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
" Header/Source switcher
Plug 'vim-scripts/a.vim'
" Git plugin
Plug 'tpope/vim-fugitive'
" Ag search plugin
" Plug 'ervandew/ag'
" RipGrep search plugin
Plug 'jremmen/vim-ripgrep'
" Auto completion plugin
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-clang'
" Auto commenting plugin
Plug 'tpope/vim-commentary'
" Surround text elemnts
Plug 'tpope/vim-surround'
" Taglist / outline
Plug 'majutsushi/tagbar'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" codefmt for formatting
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'
Plug 'google/vim-codefmt'
" clang-format
Plug 'rhysd/vim-clang-format'
" Rainbow colors for parantheses.
Plug 'luochen1990/rainbow'
" AsyncRun - run commands in async manner.
Plug 'skywind3000/asyncrun.vim'
Plug 'fach/vim-yang'
Plug 'jsfaint/gen_tags.vim'

Plug 'Chiel92/vim-autoformat'
Plug 'ntpeters/vim-better-whitespace'

" Python plugins
" PEP8 tool
Plug 'andviro/flake8-vim'
" Code linting tool
Plug 'w0rp/ale'
" Code completion based on jedi
Plug 'davidhalter/jedi-vim'

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

" === deoplete ===
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = "complete"
let g:deoplete#auto_completion_start_length = 1
"
" Clang, defaults, change on local machine for different version.
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.8/lib/libclang.so.1"
let g:deoplete#sources#clang#clang_header = "/usr/lib/llvm-3.8/lib/clang/3.8.0/include/"

" === SConstruct as python ===
au BufRead,BufNewFile SConstruct set filetype=python

" gen_tags
map <F5> :GenGTAGS<CR>

" Split vertically, like any normal person would.
set splitright
set splitbelow

" Close preview window
map <C-w>{ :pc!<CR>
