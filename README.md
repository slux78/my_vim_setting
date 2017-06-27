# my_vim_setting
vim vimrc setting file and related files I'm using

To use .vimrc in this page, clone neobundle first

	mkdir -p ~/.vim/bundle
	cd ~/.vim/bundle
	git clone https://github.com/Shougo/neobundle.vim.git

Now make softlink for .vimrc to ~/.vimrc

	cd ~/
	ln -s .vim/.vimrc

If you want to use the file in nvim, make softlink after installing nvim

	mkdir -p ~/.config/nvim
	cd ~/.config/nvim
	ln -s ~/.vim/.vimrc init.vim

* seoul256 colorschme (https://github.com/junegunn/seoul256.vim)
* vim-quickrun (https://github.com/thinca/vim-quickrun)
