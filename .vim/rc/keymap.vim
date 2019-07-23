" Define mapleader
let g:mapleader = ","
let g:maplocalleader = "\<Space>""

nnoremap <LocalLeader>w :w<CR>
nnoremap <LocalLeader>q :q<CR>
nnoremap <LocalLeader>r :<C-u>source $MYVIMRC<CR>:nohlsearch<CR>
nnoremap <LocalLeader>s :%s/
" nnoremap <LocalLeader><LocalLeader> V
nnoremap <LocalLeader>h ^
nnoremap <LocalLeader>l $

" Function key
" F2: Toggle color scheme
nnoremap <F2> :call ToggleDark()<CR>

" F7: Toggle syntax hilighting
nnoremap <F7> :call ToggleSyntax()<CR>

" F9: fix
nnoremap <F9> :<C-u>setlocal showmatch!<CR>

" F10: Toggle show number
nnoremap <F10> :<C-u>setlocal number!<CR>

" F11: Toggle cursorline
nnoremap <F11> :<C-u>setlocal cursorline!<CR>


" Shortcut keys
inoremap <silent> <C-j> <esc>
noremap! <C-j> <esc>

nnoremap <C-h> :<C-u>help<Space>

" Highlight the word under the cursor
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" Delete hilight to ESC twice
nnoremap <silent> <esc><esc> :nohlsearch<CR>


" Moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" helpers for dealing with other people's code
noremap \t :set ts=4 sts=4 sw=4 noet<cr>
noremap \s :set ts=4 sts=4 sw=4 et<cr>


" Bracket Completion
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>

" Don't use registor when pressed 'x'
nnoremap x "_x
nnoremap Y y$

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


" like emacs keybinds
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

inoremap <C-h> <Backspace>
inoremap <C-d> <Delete>
inoremap <C-a> <Home>
inoremap <C-d> <Del>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
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

nnoremap <MiddleMouse>   <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse>   <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>
