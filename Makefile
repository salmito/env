
install:
	mkdir -p ~/bin
	mkdir bkp
	cp ~/.vimrc bkp/vimrc || true
	cp vimrc ~/.vimrc
	cp ~/.bashrc bkp/bashrc || true
	cp bashrc ~/.bashrc
	cp ~/.screenrc bkp/screenrc || true	
	cp screenrc ~/.screenrc
	cp ~/.tmux.conf bkp/tmux.conf
	cp tmux.conf ~/.tmux.conf
	cp bin/* ~/bin
