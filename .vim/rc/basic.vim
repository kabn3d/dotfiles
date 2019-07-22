" Encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

set number
" set relativenumber

set shell=$SHELL

set shellslash

set notitle
set showmode
set showcmd

" History size
set history=500

" Mute
set t_vb=
set novisualbell
set noerrorbells

" set backupdir=~/.vim/backup
" set directory=~/.vim/backup
set nobackup
set noswapfile

set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Tab control
set expandtab
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" Enable fast terminal connection.
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" Do not use alt key on Win
set winaltkeys=no

" Set command window height to reduce number of 'Press ENTER...' prompts
set cmdheight=1
