#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


#VARIABLES 
admin=$(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

#EJECUCION

clear
echo  "----------------------VER USUARIO------------------------------"
echo -e " Ingrese nombre del usuario : "
read usuario 
id $usuario
read -p "Press enter para volver al menu principal" 
./menuPpal.sh
#FIN BASH




