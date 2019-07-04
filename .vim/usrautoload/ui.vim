set background=dark
" set background=light

set ruler

set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" highlight brace
" set showmatch
" set matchtime=1
" set matchpairs& matchpairs+=<:>


" When the search is finished, search again from the BOF
set wrapscan
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set diffopt+=vertical
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set wildmode=list:longest " complete files like a shell
set display=uhex

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

set autoindent " automatically set indent of new line
set smartindent


" 80-column indication
set textwidth=79
set colorcolumn=+1

" status line
set laststatus=2 " show the satus line all the time

" i.e. [+] ~/src/project/test.py
set statusline=%<
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
if winwidth(0) >= 100
  set statusline+=%F
else
  set statusline+=%t
endif

set statusline+=%=
set statusline+=
set statusline+=%{fugitive#statusline()}
set statusline+=\ Ln%l/%L
set statusline+=,
set statusline+=Col%c
set statusline+=\ %{&fenc!=''?&fenc:&enc}\|%{&ff}\|%Y
set statusline+=\  

