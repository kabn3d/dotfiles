" set background=dark
let g:scheme_bg = 'dark'
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"

set ruler

set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" set showmatch
" set matchtime=1

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

" toggle invisible characters
set list
set listchars=tab:→\
set listchars+=eol:¬
set listchars+=trail:⋅
set listchars+=extends:❯
set listchars+=precedes:❮

set showbreak=↪


" Terminal types:
"   1) term  (normal terminals, e.g.: vt100, xterm)
"   2) cterm (color terminals, e.g.: MS-DOS console, color-xterm)
"   3) gui   (GUIs)

highlight StatusLine
  \ term=bold 
  \ cterm=bold ctermfg=black ctermbg=white
  \ gui=NONE


" Status Line
set laststatus=2 " show the satus line all the time

" i.e. [+] ~/src/project/test.py
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %{GetGitBranchName()}
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
if winwidth(0) >= 100
  set statusline+=\ %F
else
  set statusline+=\ %t
endif

set statusline+=%=
set statusline+=
set statusline+=\ Ln:%l/%L
set statusline+=,
set statusline+=Col:%c
set statusline+=\ %{&fenc!=''?&fenc:&enc}\|%{&ff}\|%Y
set statusline+=\  

