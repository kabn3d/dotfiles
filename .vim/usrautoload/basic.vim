set encoding=utf-8
set fileencoding=utf-8

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~


" Use Unix as the standard file type
set ffs=unix,dos,mac

" Tab control
set expandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" Use clipboard
if has('clipboard')
    set clipboard=unnamed,autoselect
endif

" Enable the use of the mouse in all modes
if has("mouse")
    set mouse=a
endif

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1


" switch syntax highlighting on
syntax enable on


set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"

" Do not use visualbell
set novisualbell
set vb t_vb=

" History size
set history=1000
set wrap

" Do not use alt key on Win
set winaltkeys=no

" Set command window height to reduce number of 'Press ENTER...' prompts
set cmdheight=2

" Show current mode (insert, visual, normal, etc.)
set showmode

" Show last command in status line
set showcmd

" Lets vim set the title of the console
set notitle

set cursorline

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
" set listchars=tab:→\ ,eol:¬,space:⋅,extends:❯,precedes:❮
set showbreak=↪

