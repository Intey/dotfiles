#!/bin/bash -e

file=$1
dest=$2
asciidoctor $1 -o $2
sed -i 's#<link\srel="stylesheet"\shref="https://fonts.*##g' $dest
