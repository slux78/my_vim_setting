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
source ~/.vim/conf/undotree.vim
