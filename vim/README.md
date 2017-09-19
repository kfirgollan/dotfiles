# VIM

This repository contains my own personal `.vimrc` file with all the various plugins and bindings that I use.
You are more than welcome to suggest changes if you think they are needed.

Notice that this VIM configuration is optimized to my personal workflow which mainly include C development.

## How to include in .vimrc

Add the following lines to your own `.vimrc` file, e.g ${HOME}/.vimrc

```
filetype plugin indent on
set runtimepath+=[[ CLONE_DIR ]]
source ~/[[ CLONE_DIR ]]/.vimrc
```
