runtime! usrautoload/*.vim


set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~

" set a map leader for more key combos
let mapleader = ','

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

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1


" User Interface {{{
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" When the search is finished, search again from the BOF
set wrapscan

" switch syntax highlighting on
syntax enable on

set background=dark
" set background=light



set encoding=utf-8
set fileencoding=utf-8
" let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"


" view.vim {{{
set number " show line numbers
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set diffopt+=vertical
set laststatus=2 " show the satus line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set shell=$SHELL
set cmdheight=1 " command bar height
set title " set terminal title
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink
set display=uhex
set cindent

" status line
"to be fix
set statusline=%F%m%h%w\ %<[%{&fenc!=''?&fenc:&enc}]\ [%{&ff}]\ %y\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]
" i.e. [1] [master] [vim/vimrc][vim][unix:utf-8]            17,238/381 (59%)
" }}}

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time
" Show line and column number
set ruler

" 80-column indication
set textwidth=79
set colorcolumn=+1
highlight ColorColumn guibg=#202020 ctermbg=lightgray

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

" Enable the use of the mouse in all modes
if has("mouse")
    set mouse=a
endif

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
" set listchars=tab:→\ ,eol:¬,space:⋅,extends:❯,precedes:❮
set showbreak=↪


" mapping.vim {{{
" Define mapleader
let g:mapleader = ','
let g:maplocalleader = ','

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>

" Moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

" Bracket Completion
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<Left>
inoremap [ []<Left>

" Don't use registor when pressed 'x'
nnoremap x "_x

" Delete hilight to ESC twice
nnoremap <silent> <esc><esc> :noh<return>

" 'kk' instead of <ESC> and save current file
inoremap <silent> kk <ESC>
inoremap <silent> kk  <ESC>:w<CR>

" like emacs
inoremap <C-h> <Backspace>
inoremap <C-d> <Delete>
cnoremap <C-k> <UP>
cnoremap <C-j> <DOWN>
cnoremap <C-l> <RIGHT>
cnoremap <C-h> <LEFT>
cnoremap <C-d> <DELETE>
cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
cnoremap <C-f> <RIGHT>
cnoremap <C-b> <LEFT>
cnoremap <C-a> <HOME>
cnoremap <C-e> <END>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>

inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
" inoremap <C-n> <Up>
" inoremap <C-p> <Down>
inoremap <C-m> <CR>

nnoremap <C-m> o<Esc>

" Disable key binding
nnoremap q: <Nop>
nnoremap q/ <Nop>
nnoremap q? <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

" Shortcut keys
" insert date ex) 2019-02-02
imap <silent> <F2> <C-R>=strftime("%Y-%m-%d")<CR>

" Highlight the word under the cursor
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
" }}}


colorscheme solarized
let g:solarized_termcolors=256
"
runtime! usrautoload/plugins/*.vim

