#!/bin/bash

echo "Sort by (m) memory or by (c) cpu?"

read sort_by

# Check the user input and then sort
case "$sort_by" in
  "m")
    # sort by memory
    ps -u $USER -o pid,%mem,comm | sort -k2 -n
    ;;
  "c")
    # sort by cpu
    ps -u $USER -o pid,%cpu,comm | sort -k2 -n
    ;;
  *)
    # invalid input
    echo "Invalid input"
    ;;
esac
