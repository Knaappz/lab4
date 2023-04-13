#!/bin/bash

if [ "$1" = "--date" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi
