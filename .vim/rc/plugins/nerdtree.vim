" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nnoremap <silent> <LocalLeader>k :NERDTreeToggle<CR>
" expand to the path of the file in the current buffer
nnoremap <silent> <LocalLeader>y :NERDTreeFind<CR>
