#!/usr/bin/env bash
#
# Gestion de Usuarios - 
# Segunda Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


## ------------------------------- VARIABLES -------------------------------- #


#EJECUCION
clear
echo -e "----------------LOG MODIFICACIONES DE USUARIOS---------------------------"
echo ""
echo ""


cat /var/log/modificacionUsuario.log && exit 1


./menu.sh