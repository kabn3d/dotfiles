" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nnoremap <silent> <leader>k :NERDTreeToggle<CR>
" expand to the path of the file in the current buffer
nnoremap <silent> <leader>y :NERDTreeFind<CR>
