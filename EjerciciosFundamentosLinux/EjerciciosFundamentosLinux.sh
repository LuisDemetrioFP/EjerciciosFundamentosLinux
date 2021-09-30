#!/bin/bash

# Variables para definir texto de entrada y definir variable de texto por defecto EJERCICIO_03

DEFAULT=$1

# Crea las carpetas recursivamente y con permisos para creador y grupo del usuario del EJERCICIO_01

mkdir -p -m755 foo/{empty,dummy}/

# Crea los archivos file1.txt y file2.txt dentro de la carpeta foo/dummy del EJERCICIO_01

touch foo/dummy/file{1,2}.txt/

# Inserta el texto 'Me encanta la bash' o el texto que hemos indicado como parametro en la ejecucion del script en el archivo file1.txt del EJERCICIO_01, 02 y 03

echo ${DEFAULT:-'Que me gusta el bash!!'} > foo/dummy/file1.txt

# Vuelca el contenido de foo/dummy/file1.txt a foo/dummy/file2.txt y mueve file2.txt a la carpeta foo/empty Ejercicio_02

cat foo/dummy/file1.txt > foo/dummy/file2.txt | mv foo/dummy/file2.txt foo/empty

exit
