#!/bin/bash

if [ "$1" = "--date" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi

if [[ $1 == "--logs" ]]; then
  for i in {1..100}
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > ${filename}
    echo "Nazwa skryptu: skrypt.sh" >> ${filename}
    echo "Data: $(date)" >> ${filename}
  done
else
  echo "Nieprawidłowa flaga. Użyj --logs, aby utworzyć pliki logów."
fi
