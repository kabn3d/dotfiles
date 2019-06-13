" Setting up Vundle - the vim plugin bundler
let iCanHasVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')

if !filereadable(vundle_readme)
    echo "==>Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
    let iCanHasVundle=0
endif

" load plugins from vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" utilities
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc / gc
Plugin 'editorconfig/editorconfig-vim' " editor config
Plugin 'yggdroot/indentline' "indent line

" colorschemes
Plugin 'altercation/vim-colors-solarized'

if iCanHasVundle == 0
    echo "==>Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

call vundle#end()
filetype plugin indent on

syntax on
colorscheme solarized
" Setting up Vundle - the vim plugin bundler end

