.PHONY: install install-powerline

install: install-powerline

install-powerline:
	sudo pip install git+git://github.com/Lokaltog/powerline

install-vim:
	sudo add-apt-repository ppa:jonathonf/vim
	sudo apt update
	sudo apt install vim vim-common vim-gtk vim-gtk-py2 vim-gui-common vim-runtime vim-tiny
