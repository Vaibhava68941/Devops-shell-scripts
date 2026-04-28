#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <old_Word> <new_word>"
	exit 1
fi

old_word="$1"
new_word="$2"

sed -i "s/$old_word/$new_word/g" temp.txt

echo "All occurencess of '$old_word' replaced by '$new_word' in 'temp.txt'."
