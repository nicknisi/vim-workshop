# Vim workshop

This repo contains the slides for my vim talk. Additionally, I have provided a starter vimrc and tmux.conf. These may be a good starting point for someone getting into vim and tmux.

Check out the [presentation PDF](vim-workshop.pdf).

## Vim setup instructions

1. Download vim

	Likely, vim is already installed on you machine. If you're on a mac, you can get the latest vim from Homebrew.

	```shell
	sudo apt install vim
	```

1. Create a vimrc

	Create a vim configuration file in your home directory and a .vim/bundle directory
	```shell
	cp vimrc ~/.vimrc
	mkdir -p ~/.vim/bundle
	```

1. Add vundle

	If you'd like to use vundle to manage plugins, you can install it as a git submodule
	```shell
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
	```

	You will also need to let vim know about vundle by adding it to your `~/.vimrc`.
	```vim
	set rtp+=~/.vim/bundle/vundle/
	call vundle#begin()

	" let vundle manage vundle
	Plugin 'gmarik/vundle'
	
	" list all plugins that you'd like to install here
	Plugin 'kien/ctrlp.vim' " fuzzy find files
	Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
	Plugin 'benmills/vimux'
	Plugin 'tpope/vim-fugitive' " the ultimate git helper
	Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode

	call vundle#end()
	filetype plugin indent on
	```

1. Start vim and install plugins

	```shell
	vim
	:PluginInstall //install plugins
	:PluginClean //clean uselesss plugin
	```
2. how key mapping

	<c-j> move windows up
	<c-k> move windows down
	<c-h> move windows left
	<c-l> move windows right
	
	buffers
	:bun/:bd/:bw to close the window as well (vim command), or
	:BUN/:BD/:BW to leave the window(s) intact (this script).
3. wget

	wget -O ~/.vimrc https://raw.githubusercontent.com/brucelau-github/vim-configuration/master/vimrc
