#!/bin/bash

if [ "$1" == "--logs" ]; then
  if [ -z "$2" ]; then
    echo "Podaj liczbę plików jako drugi argument."
    exit 1
  fi

  num_logs=$2
  for ((i=1; i<=$num_logs; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Nazwa skryptu: skrypt.sh" >> $filename
    echo "Data: $(date)" >> $filename
  done

  echo "Utworzono $num_logs plików log."
else
  echo "Nieznana flaga. Dostępne flagi: --logs"
fi
