# Vim workshop

This repo contains the slides for my vim talk. Additionally, I have provided a starter vimrc and tmux.conf. These may be a good starting point for someone getting into vim and tmux.

Check out the [presentation PDF](vim-workshop.pdf).

## Vim setup instructions

1. Download vim

	Likely, vim is already installed on you machine. If you're on a mac, you can get the latest vim from Homebrew.

	```shell
	brew install macvim --override-system-vim
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

1. Start vim and install default plugins

	```shell
	vim +PluginInstall
	```

1. Install tmux

	tmux can be installed from Homebrew on OSX
	```shell
	brew install tmux
	```

1. Add a tmux config

	```shell
	cp tmux.conf ~/.tmux.conf
	```

1. Connect to a new tmux session

	```shell
	tmux new-session -s pasta
	```

Got questions? I'm always excited to [talk](https://twitter.com/nicknisi) about vim + tmux!

## Trouble Shooting 
1. If your tmux session is closed immediatly and you see the [exited] message in the terminal you are probably missing the 	`reattach-to-user-namespace` package to install it simply do

	```shell
	brew install reattach-to-user-namespace
	```
