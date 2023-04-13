#!/bin/bash

if [ "$1" = "--date" -o "$1" == "-d" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi

if [ "$1" == "--logs" -o "$1" == "-l" ]; then
  if [[ $2 =~ ^[0-9]+$ ]]; then
    num_logs=$2
  else
    num_logs=100
  fi
  for i in $(seq 1 $num_logs)
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > ${filename}
    echo "Nazwa skryptu: skrypt.sh" >> ${filename}
    echo "Data: $(date)" >> ${filename}
  done
else
  echo "Nieprawidłowa flaga lub brak argumentu liczby plików. Użyj --logs [liczba], aby utworzyć określoną liczbę plików logów lub --logs, aby utworzyć 100 plików."
fi

if [ "$1" == "--help" -o "$1" == "-h" ]; then
  echo "Dostępne opcje:"
  echo "  --date, -d    Wyświetla dzisiejszą datę"
  echo "  --logs, -l    Tworzy automatycznie 100 plików logx.txt z nazwami i datami utworzenia"
  echo "                Jeśli podano argument, tworzy odpowiednią liczbę plików logx.txt"
  echo "  --help, -h    Wyświetla tę pomoc"
fi

if [[ "$1" = "--init" ]]; then
        git clone https://github.com/Knaappz/lab4.git
        echo "export PATH="$PATH:$(pwd)/twoj-repozytorium"" >> ~/.bashrc
        source ~/.bashrc

        echo "Repozytorium sklonowane i ścieżka dodana do PATH"

fi

if [ "$1" == "" ]; then
  num_files=100
else
  num_files="$1"
fi

mkdir -p errorx

for i in $(seq 1 "$num_files"); do
  echo "Nazwa pliku: error$i.txt" > errorx/error$i.txt
  echo "Nazwa skryptu: $0" >> errorx/error$i.txt
  echo "Data utworzenia: $(date)" >> errorx/error$i.txt
done



