#!/bin/bash

# Extract binary code from a given assembly file

if [ -z "$1" ]; then
    echo "Usage: asmbin [ASMFILE_NAME]"
    echo "NOTE: Do not include the file's extension in the name"
    exit 1
fi

as -o "$1.o" "$1.s" && objcopy --dump-section .text=$1 "$1.o"

if [ $? -eq 0 ]; then
    echo "Successfully created binary $1 in $(pwd)"
fi

exit 0
