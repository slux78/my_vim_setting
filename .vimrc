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

call neobundle#end()

filetype plugin indent on

" Check plugin is installed or not
NeoBundleCheck

if !has('vim_starting')
	" setting for reading .vimrc again
	call neobundle#call_hook('on_source')
endif
