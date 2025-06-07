#!/bin/bash

rm -f all-catatan.txt

for f in *.txt; do
  echo -e $f
  echo -e "\n\n#### $f\n" >> all-catatan.txt
  echo '```C' >> all-catatan.txt
  echo >> all-catatan.txt
  cat "$f" >> all-catatan.txt
  echo -e "\n```" >> all-catatan.txt
done
