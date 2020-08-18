#!/usr/bin/env bash
#
#
# Gestion de Usuarios - 
#
# Segunda Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

## ------------------------------- VARIABLES -------------------------------- #

    
#MENU--------------------------------------------------------------------------- #

clear

echo ""

echo -e "         ------------Gestion de Usuarios Linux -----------------------------------------------------"

echo ""

echo -e "\t1)  Ver log de Altas de Usuarios"

echo -e "\t2)  Ver log de Baja de Usuarios"

echo -e "\t3)  Ver log de Modificiaciones de Usuarios"

echo -e "\t4)  Ver log de bakcup de bd"

echo -e "\tQ)  Salir"

echo ""

echo -e "\t Digite una opcion: "

read OP

case "$OP" in

1)
            
#Redirecciona al bash de ver de Usuario
./verLogAU.sh
;;

2)
            
#Redirecciona al bash de crear Usuario
./verLogBU.sh
;;
3)
            
#Redirecciona al bash de borrar usuario
./verLogMU.sh
;;

4)
            
#Redirecciona al bash de modificar usuario
./verLogBdb.sh
;;


q|Q) exit     
;;

*) echo -e "\t Opcion inválida!"
./menu.sh
esac


    