#!/bin/bash

if [ "$1" == "--help" ]; then
  echo "Dostępne opcje:"
  echo "--date   : Wyświetla dzisiejszą datę."
  echo "--logs N : Tworzy N plików log, gdzie N to liczba podana jako argument."
  echo "--help   : Wyświetla ten komunikat pomocy."
else
  echo "Nieznana flaga. Użyj --help, aby wyświetlić dostępne opcje."
fi
