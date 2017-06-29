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
NeoBundle 'davidhalter/jedi'               " for python API auto completion

if has("nvim")
	NeoBundle 'Shougo/denite.nvim'    " support for NeoVim
	NeoBundle 'Shougo/neomru.vim'     " extension for denite --> Denite file_mru
	NeoBundle 'Shougo/neoyank.vim'    " extension for denite --> Denite neoyank
	NeoBundle 'Shougo/deoplete.nvim'  " new neo-complete for neovim
	NeoBundle 'neovim/python-client'
	NeoBundle 'zchee/deoplete-jedi'   " for python API auto completion
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

" source all vim files in .vim/conf directory recusively
for fpath in split(globpath('~/.vim/conf', '*.vim'), '\n')
	exe 'source' fpath
endfor
