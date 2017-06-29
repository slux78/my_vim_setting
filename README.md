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

* Add airline, airline-theme and setting

	If status line is not correctly displayed (<== or ==> ) please check powerline font at https://github.com/powerline/fonts

		let g:airline#extensions#tabline#enabled = 1
		let g:airline_powerline_fonts = 1
		let g:airline_theme='light'
