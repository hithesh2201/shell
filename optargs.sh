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
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

echo "Option a: $arg_a"
echo "Option b: $arg_b"
