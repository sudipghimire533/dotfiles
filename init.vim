"enable AutoComamnd
autocmd!

" exit if current nvim profile is tiny or small
if !1 | finish | endif

" No need to be compatible with old vi
set nocompatible

" Be modern!
set encoding=utf-8

" Set line numbers
set number

" convert tab to space
set expandtab

" Auto indent as of previous line
set autoindent

" Move cursor by 4 columns on tab
set softtabstop=4

" Width for auto indent
set shiftwidth=4

" Show matching bracket
set showmatch

" Show current mode
set showmode

" be smart with tab
set smarttab

" Prefer bash like completion
set wildmode=longest,list

" Allow auto indent according to file type
filetype plugin indent on

" Allow syntax hilighting
syntax on

" Enable mouse clicks
set mouse=a

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

" Show sign column indicating file change
set signcolumn=yes

" split to down and right by default
set splitbelow
set splitright

" do not care about case in search
set ignorecase

" but when query is upper-case search for exact case
set smartcase

" Fold method to syntax. Can be override in ftplugin
set foldmethod=syntax

" Do not fold at startup
set nofoldenable

" Do not need to fold too much nested
set foldnestmax=5

" Show the title string
set title

" Hilight the search match
set hlsearch

" Minimum no. of row to set up or down (offset)
set scrolloff=10

" Do not need bash for simple terminal.
set shell=/bin/sh

" incremental live completion
set inccommand="nosplit"

" Enable breakindent
set breakindent

" Hilight the text that have been yanked
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" Saves my undo history
set undofile
set undodir=~/.vim/undo_files

"
set completeopt=menuone,noinsert,noselect


" ---- load the plugins ----
source ~/.config/nvim/plugins.vim

" ---- Put rempas in seperate files ---
source ~/.config/nvim/remaps.vim

set list
