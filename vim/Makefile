.PHONY: install install-powerline

init:
	mkdir -p downloads

install: install-vim install-packages install-ag install-command-t install-powerline
	@echo "Installation completed!"

install-powerline:
	sudo pip install git+git://github.com/Lokaltog/powerline

install-vim:
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:jonathonf/vim
	sudo apt update
	sudo apt install vim vim-common vim-gtk vim-gtk-py2 vim-gui-common vim-runtime vim-tiny

install-command-t:
	sudo apt-get install ruby-dev
	(cd ~/.vim/bundle/command-t/ruby/command-t;ruby extconf.rb;make)

install-ag:
	sudo apt-get install silversearcher-ag

install-packages:
	sudo apt-get install exuberant-ctags
	vim -c "VundleInstall" -c "qa!"

install-zoom-win: init
	wget http://www.vim.org/scripts/download_script.php?src_id=18151 -O downloads/zoom_win.vba.gz
	vim -c ":e downloads/zoom_win.vba.gz" -c ":so %" -c ":q"
