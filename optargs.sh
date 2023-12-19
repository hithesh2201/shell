#!/bin/bash

while getopts ":a:b:" opt; do
  case $opt in
    a)
      arg_a="$OPTARG"
      ;;
    b)
      arg_b="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      if [ -z "$arg_a" ] || [ -z "$arg_b" ]; then
        echo "Error: Both -a and -b options are required."
        exit 1
        fi  
      exit 1
      ;;
  esac
done



echo "Option a: $arg_a"
echo "Option b: $arg_b"
