#!/bin/bash

# Extract binary code from a given assembly file

if [ -z "$1" ]
    echo "Usage: asmbin [NAME_OF_ASMFILE]"
    echo "NOTE: Do not include the file's extension in the name"
    exit 1
fi

as -o "${1}.o" "${1}.s" && objcopy --dump-section .text=$1 "${1}.o"

if [ $? -eq 0 ]
    echo "Successfully created binary $1 in $(pwd)"
fi

exit 0
