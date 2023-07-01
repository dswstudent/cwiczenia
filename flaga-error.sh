#!/bin/bash

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
  count=${2:-100}

  for ((i=1; i<=$count; i++)); do
    dirname="error$i"
    mkdir -p "$dirname"
    filename="$dirname/error$i.txt"
    echo "To jest plik $filename" > "$filename"
  done
else
  echo "Nieznana flaga. Użyj --help, aby wyświetlić dostępne opcje."
fi
