" Setting up Vundle - the vim plugin bundler
let HasVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
  echo "==> Installing Vundle..."
  silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
  let HasVundle=0
endif

" load plugins from vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" utilities
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc / gc
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim' " editor config
Plugin 'yggdroot/indentline' "indent line

" python
Plugin 'davidhalter/jedi-vim'
" Plugin 'andviro/flake8-vim'
Plugin 'kevinw/pyflakes-vim'

" colorschemes
Plugin 'altercation/vim-colors-solarized'

if HasVundle == 0
  echo "==> Installing Vundles, please ignore key map error messages"
  :PluginInstall
endif

call vundle#end()
filetype plugin indent on

syntax on
colorscheme solarized
" Setting up Vundle - the vim plugin bundler end

