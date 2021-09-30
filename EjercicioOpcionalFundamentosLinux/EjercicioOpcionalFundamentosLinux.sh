#!/bin/bash

#Mensajes de error si los argumentos se quedan vacios:

echo ${1:?'Introduce una web entre " " como primer parametro'} ${2:?'SUGERENCIA: introduce una palabra entre " " para buscar en la web como segundo parametro'}

#Variable para contar que el parametro 1 no este vacio (tengo que practicar mas con boleanas en bash :P)

count_var1=$(echo $1 | wc -w)

#bucle while para ejecutar los comandos solo si se han introducido argumentos:

while [ $count_var1 -ge 0 ]
do

#Creamos archivo donde volcar los datos:

	touch fileweb.txt

#Variable para descargar y volcar los datos:	

	newfile=$(curl -s $1 > fileweb.txt)

#Variable de busqueda y conteo de linea:

	findword=$(grep -ion $2 fileweb.txt)

#Muestra en pantalla el resultado de la busqueda y el numero de linea:	

	echo 'La palabra buscada en el texto esta en la linea:' $findword
	exit
done



