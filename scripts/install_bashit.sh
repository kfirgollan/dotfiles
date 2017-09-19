#!/bin/bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
pushd ~/.bash_it
source install.sh
popd
