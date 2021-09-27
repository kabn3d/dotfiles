" Setting up Vundle - the vim plugin bundler
let has_vundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
  echo "==> Installing Vundle..."
  echo ""
  silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
  let has_vundle=0
endif

" load plugins from vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Utilitiess
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc / gc
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim' " editor config
Plugin 'yggdroot/indentline' "indent line

" Colorschemes
Plugin 'altercation/vim-colors-solarized'

if has_vundle == 0
  echo "==> Installing Vundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif

call vundle#end()
filetype plugin indent on

syntax on
colorscheme solarized
" Setting up Vundle - the vim plugin bundler end
