## How to include in .vimrc

Add the following lines to your own `.vimrc` file, e.g ${HOME/.vimrc

```
filetype plugin indent on
set runtimepath+=[[ CLONE_DIR ]]
source ~/[[ CLONE_DIR ]]/.vimrc
```
