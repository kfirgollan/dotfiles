#!/usr/bin/env bash
dir=$2

echo "Locating files..."
src_files=$(find ${dir} -type f \( -name '*.c' -o -name "*.h" \) | xargs realpath)
echo ${src_files} | tr " " "\n" > cscope.files

echo "Rebuilding cscope db..."
# -b: just build
# -q: create inverted index
cscope -b -q

echo "Rebuilding ctags db..."

# update ctags as well
etags ${src_files}
