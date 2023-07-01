#!/bin/bash

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d   : Wyświetla dzisiejszą datę."
  echo "--logs, -l N : Tworzy N plików log, gdzie N to liczba podana jako argument."
  echo "--help, -h   : Wyświetla ten komunikat pomocy."
elif [[ "$1" == "--date" || "$1" == "-d" ]]; then
  echo "Dzisiejsza data: $(date +%Y-%m-%d)"
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}  # Domyślnie 100 plików, lub wartość podana jako argument

  for ((i=1; i<=$count; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename, Skrypt: $0, Data: $(date +%Y-%m-%d)" > "$filename"
  done
else
  echo "Nieznana flaga. Użyj --help, aby wyświetlić dostępne opcje."
fi
