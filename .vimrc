if !has('gui_running')
  let g:loaded_matchparen = 1
endif

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

runtime! rc/*.vim
runtime! rc/plugins/*.vim
