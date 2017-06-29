if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle.vim manges itself as neobundle.vim
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Describe plugins to be installed
"     :help neobundle-examples
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mbbill/undotree'
NeoBundle 'vim-scripts/DirDiff.vim.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'ervandew/supertab'
NeoBundle 'MarcWeber/vim-addon-mw-utils'   " should be installed for vim-snipmate
NeoBundle 'tomtom/tlib_vim'                " should be installed for vim-snipmate
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'sgur/ctrlp-extensions.vim'      " ctrlp extension  for cmdline history, yank history, extension selector menu history
NeoBundle 'vim-syntastic/syntastic'

if has("nvim")
	NeoBundle 'Shougo/denite.nvim'    " support for NeoVim
else
	NeoBundle 'Shougo/unite.vim'    " support for Vim
endif

call neobundle#end()

filetype plugin indent on

" Check plugin is installed or not
NeoBundleCheck

if !has('vim_starting')
	" setting for reading .vimrc again
	call neobundle#call_hook('on_source')
endif

source ~/.vim/colorscheme/colorscheme.vim
source ~/.vim/conf/default_setting.vim
source ~/.vim/conf/undotree.vim
source ~/.vim/conf/airline.vim
source ~/.vim/conf/ctrlp.vim
source ~/.vim/conf/syntastic.vim
