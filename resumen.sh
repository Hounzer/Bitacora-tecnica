#!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "uso: $0 <archivo>" >&2
    exit 1
fi
if [ -e "$1" ]; then
    echo "El archivo $1 existe."
else
    echo "El archivo $1 no existe." >&2
    exit 1
fi
echo "=== Resumen del repo ==="
echo "Commits totales: $(git log --oneline | wc -l)"
echo "Commits sin merges: $(git log --oneline --no-merges | wc -l)"
echo "Archivos .md: $(find . -name "*.md" -not -path "./.git/*" | wc -l)"
echo "El archivo $1 tiene $(wc -l < "$1") lineas." 
printf "Las 5 primeras lineas del archivo $1 son:\n"
head -n 5 "$1"