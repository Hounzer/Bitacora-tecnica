#!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "No se proporcionaron argumentos." >&2
    exit 1
fi
echo "me llamaste con $# argumentos y el primero es $1"
if [ -e "$1" ]; then
    echo "El archivo $1 existe."
else
    echo "El archivo $1 no existe." >&2
    exit 1
fi

