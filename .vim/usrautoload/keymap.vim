"Define mapleader
let g:mapleader = "\<Space>"
let g:maplocalleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>r :source ~/.vimrc<CR>:noh<CR>
nnoremap <Leader>s :%s/

" Function key
" F2: insert date
inoremap <silent> <F2> <C-R>=strftime("%Y-%m-%d")<CR>

" F9: fix
nnoremap <F9> :<C-u>setlocal showmatch!<CR>

" F10:
nnoremap <F10> :<C-u>setlocal number!<CR>
inoremap <F10> <Esc>:<C-u>setlocal number!<CR><Insert>

" F11: fix
nnoremap <F11> :<C-u>setlocal cursorline!<CR>
inoremap <F11> <Esc>:<C-u>setlocal cursorline!<CR><Insert>

" Shortcut keys
" Highlight the word under the cursor
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" Delete hilight to ESC twice
nnoremap <silent> <esc><esc> :noh<return>

" instead of <ESC> and save current file
inoremap <silent> <C-j> <ESC>

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

map <MiddleMouse>   <Nop>
map <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
inoremap <MiddleMouse>   <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

