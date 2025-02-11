#!/bin/bash

# Simple script to create a new assembly file
# Includes Intel syntax header

if [ -z "$1" ]; then
        echo "Usage: mkasm [NAME]"
        exit 1
fi

echo -e "\t.intel_syntax\tnoprefix\n\t.global\t_start\n\n_start:\n" >> "$1.asm"

exit 0
