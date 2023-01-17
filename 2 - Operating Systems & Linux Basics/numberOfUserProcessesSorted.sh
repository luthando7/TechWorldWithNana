#!/bin/bash

# Prompt the user for input
echo "Sort by (m)emory or (c)pu?"
read sort_by
echo "How many processes to print?"
read num_processes

# Check the user input and sort the output accordingly
case "$sort_by" in
    "m")
        # Sort by memory
        ps -u $USER -o pid,%mem,comm | sort -k2 -n | head -n $num_processes
        ;;
    "c")
        # Sort by CPU
        ps -u $USER -o pid,%cpu,comm | sort -k2 -n | head -n $num_processes
        ;;
    *)
        # Invalid input
        echo "Invalid input"
        ;;
esac

