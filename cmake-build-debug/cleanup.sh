#!/bin/bash

rm -f ChatRoom      				      # Rimuovi l'eseguibile generato
find . -type f -name "*.o" -exec rm -f {} \;          # Rimuovi tutti i file oggetto
rm -f Makefile       				      # Rimuovi il Makefile
