## my setting file (.vimrc)

This page has vim vimrc setting information I'm using

To install the files, first download all files:

	mkdir -p ~/.vim
	git glone https://github.com/slux78/my_vim_setting

Now install plugin manager 'neobundle':

	mkdir -p ~/.vim/bundle
	cd ~/.vim/bundle
	git clone https://github.com/Shougo/neobundle.vim.git

And then make softlink for .vimrc to ~/.vimrc:

	cd ~/
	ln -s .vim/.vimrc

If you want to use this setting in neovim, make softlink after installing neovim:

	mkdir -p ~/.config/nvim
	cd ~/.config/nvim
	ln -s ~/.vim/.vimrc init.vim


## Plugins and how to use it

* seoul256 colorschme (https://github.com/junegunn/seoul256.vim)

* vim-quickrun (https://github.com/thinca/vim-quickrun)    

		:QuickRun


* Unite (https://github.com/Shougo/unite.vim)

* Denite.nvim (https://github.com/Shougo/denite.nvim)

	- neomru (https://github.com/Shougo/neomru.vim) : this is for :Denite file_mru

	- neoyank (https://github.com/Shougo/neoyank.vim) : This is for :Deniten neo_yank
	
	- How to use
	

			* Denite command	
			+--------------------+------------------------------------------+
			| :Denite            | Normal command                           |
			+--------------------+------------------------------------------+
			| :DeniteBufferDir   | Execute :Denite command based on         |
			|                    | currently opened buffer's directory.     |
			+--------------------+------------------------------------------+
			| :DeniteCursorWord  | Execute :Denite command based on         |
			|                    | word under cursor position. It can       |
			|                    | be replaced to simply grep word          |
			+--------------------+------------------------------------------+
			| :DeniteProjectDir  | Execute :Denite command based on         |
			|                    | root directory of some porject directory |
			+--------------------+------------------------------------------+

			* Denite sub_command
			+-----------------+------------------------------------------+
			| buffer          | open buffer                              |
			+-----------------+------------------------------------------+
			| colorscheme     | change colorscheme                       |
			+-----------------+------------------------------------------+
			| file_rec        | open file                                |
			+-----------------+------------------------------------------+
			| filetype        | chane file type                          |
			+--------------------+---------------------------------------+
			| directory_rec   | change directory (buffer local)          |
			+-----------------+------------------------------------------+
			| command         | insert vim command in ex mode            |
			+-----------------+------------------------------------------+
			| grep            | move to the result line of grep          |
			+-----------------+------------------------------------------+
			| help            | jump to tag in vim document              |
			+-----------------+------------------------------------------+
			| file_mru        | open Most Recently Used file             |
			+-----------------+------------------------------------------+
			| neo_yank        | select entry of yank history and paste it|
			+-----------------+------------------------------------------+



* DirDiff (http://www.vim.org/scripts/script.php?script_id=102)

		:DirDiff Dir_A Dir_B

		Command in compare file list view
		+---------+---------------------------------------+
		| Enter   | Compare files under cursor            |
		+---------+---------------------------------------+
        | o       | Same to Enter                         |
        +---------+---------------------------------------+
        | s       | Synchronize the current diff          |
        +---------+---------------------------------------+
        | u       | Diff update: update diff window       |
        +---------+---------------------------------------+
        | x       | Set exclude pattern, separated by ',' |
        +---------+---------------------------------------+
        | i       | Set include pattern, separated by ',' |
        +---------+---------------------------------------+
        | q       | Quit DirDiff                          |
        +---------+---------------------------------------+
        
        Command in file compare dialog
        +---------+---------------------------------------+
        | a       | Overwrite file in A to file in B      |
        +---------+---------------------------------------+
        | b       | Overwrite file in B to file in A      | 
        +---------+---------------------------------------+
        | l       | For the rest of items you've selected |
        |         | overwrite files in A to files in B    |
        +---------+---------------------------------------+
        | w       | For the rest of items you've selected |
        |.        | overwrite files in B to files in A.   |
        +---------+---------------------------------------+
        | s       | Skip this file and compare next file  |
        +---------+---------------------------------------+
        | n       | Close dialog                          |
        +---------+---------------------------------------+
        
* Undotree (https://github.com/mbbill/undotree)

		:UndoTreeGoggle
		
* fugitive (https://github.com/tpope/vim-fugitive)

	Simple commit way:

		1. Edit files what you want
		2. Open up the status window using ':Status'
		3. Move to line indicates which files are modified
		4. Change Stage/Unstage using '-' key
		5. Type 'cc' to commit the changes
		6. When commit window is opened, describe comment from first line (there is no comment line with #)
		7. All comments are added, save and close (':wq' or ':x')
		8. If push all changes to Github, type ':Gpush'

* airline, airline-theme (https://github.com/vim-airline/vim-airline, https://github.com/vim-airline/vim-airline-theme)

	If status line is not correctly displayed (<== or ==> ) please check powerline font at https://github.com/powerline/fonts

		let g:airline#extensions#tabline#enabled = 1
		let g:airline_powerline_fonts = 1
		let g:airline_theme='light'

* Supertab (https://github.com/ervandew/supertab)

* Snipmate and snippets

	- Snipmate : https://github.com/garbas/vim-snipmate
	- tlib     : https://github.com/tomtom/tlib_vim
	- addon-mw-utils: https://github.com/MarcWeber/vim-addon-mw-utils
	- snippets : https://github.com/honza/vim-snippets


* CtrlP and extension

	- CtrlP : https://github.com/ctrlpvim/ctrlp.vim
	- extension : https://github.com/sgur/ctrlp-extensions.vim

	- command
	
	
			+------------------------------------------+------------------------------------+
			|:CtrlP  or  :CtrlP [starting-directory]   |find file mode                      |
			+------------------------------------------+------------------------------------+
			|:CtrlPBuffer                              |find buffer mode                    |
			+------------------------------------------+------------------------------------+
			|:CtrlPMRU                                 |find MRU file mode                  |
			+------------------------------------------+------------------------------------+
			|:CtrlPMixed                               |find files, buffer, and MRU files   |
			|                                          | at the same time                   |
			+------------------------------------------+------------------------------------+
			|:CtrlPCmdline                             |find commandline history            |
			+------------------------------------------+------------------------------------+
			|:CtrlPMenu                                |listup CtrlP function menu          |
			+------------------------------------------+------------------------------------+
			|:CtrlPYankring                            |find yank history                   |
			+------------------------------------------+------------------------------------+


	- CtrlP window command
	
	
			+----------------------+--------------------------------------------------------+
			| <F5>                 | purge the cache for the current directory              |
			+----------------------+--------------------------------------------------------+
			| <c-f>, <c-b>         | cycle between modes                                    |
			+----------------------+--------------------------------------------------------+
			| <c-d>                | switch to filename only search mode                    |	
			|                      |  instead of fullpath search                            |
			+----------------------+--------------------------------------------------------+
			| <c-r>                | switch to search mode using regex pattern              |
			+----------------------+--------------------------------------------------------+
			| <c-j>, <c-k>         | navigate search results                                |
			+----------------------+--------------------------------------------------------+
			| <c-t>                | open selected entry in new tab                         |
			+----------------------+--------------------------------------------------------+
			| <c-v>                | open selected entry in new virtical split              |
			+----------------------+--------------------------------------------------------+
			| <c-x>                | open selected entry in new horizontal split            |
			+----------------------+--------------------------------------------------------+
			| <c-n>, <c-p>         | navigate the next/previous string                      |
			|                      |  in the prompt's history                               |
			+----------------------+--------------------------------------------------------+
			| <c-y>                | create a new file and its parent directories           |
			+----------------------+--------------------------------------------------------+
			| <c-z>                | mark/unmark multiple files and <c-o> to open them      |
			+----------------------+--------------------------------------------------------+

* syntastic (https://github.com/vim-syntastic/syntastic)
