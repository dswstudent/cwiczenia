#!/bin/bash

if [[ "$1" == "--init" ]]; then
  current_dir=$(pwd)
  repo_name=$(basename "$current_dir")

  # Klonowanie repozytorium do bieżącego katalogu
  git clone . "$repo_name"

  # Ustawienie ścieżki do repozytorium w zmiennej środowiskowej PATH
  echo "export PATH=\$PATH:$current_dir/$repo_name" >> ~/.bashrc
  source ~/.bashrc

  echo "Repozytorium zostało sklonowane do katalogu $repo_name."
  echo "Ścieżka do repozytorium została dodana do zmiennej środowiskowej PATH."
else
  echo "Nieznana flaga. Użyj --help, aby wyświetlić dostępne opcje."
fi
