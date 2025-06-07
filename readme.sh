#!/bin/bash

rm -f README.md

for f in *.txt; do
  echo -e $f
  cat "$f" >> README.md
done
