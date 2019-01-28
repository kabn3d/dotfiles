set encoding=utf-8
set fileencoding=utf-8

set number " Show line numbers
set title " Set terminal title
set shell=$SELL
set showcmd " Show last command in status line
set showmode " Show current mode(insert, visual, normal, etc.)

" History size
set history=1000

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Make backspace behave in a sane manner
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~

" Do not use visualbell
set novisualbell
set vb t_vb=

" Tab control
set expandtab " Tabs ftw
set smarttab " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " The visible width of tabs
set softtabstop=4 " Edit as if the tabs are 4 characters wide
set shiftwidth=4 " Number of spaces to use for inden and unindent
set shiftround " Round indent to a multiple of 'shiftwidth'

" Paste
set pastetoggle=<F2>

" Use clipboard
if has('clipboard')¬"
    set clipboard=unnamed
endif

