#!/bin/bash

#Ejecutamos el comando de speedtest que nos mostrara el resulta 
#pero no en terminal, sino que, se almacenara en el archivo de texto llamado prueba
speedtest > prueba.txt

#Con el comando grep, buscamos las palabras que deseamos encontrar, 
#con la opcion -r es para que sea recursivo en el directorio actual,
#con la opcion -i es para que no distinga entre mayusculas y minisculas para
#despues poder extraer esa información y mostrar esa informació con el comando zenity

grep -r -i Download: prueba.txt > resultado1.txt
grep -r -i Upload: prueba.txt > resultado2.txt


x= tail resultado1.txt;
y= tail resultado2.txt;

echo $x;
echo $y;

tail prueba.txt | zenity --list --title "Internet" --text " " --column "La velocidad de internet es:"


