#!/usr/bin/env bash
#
# Gestion de Usuarios - 
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


## ------------------------------- VARIABLES -------------------------------- #


#EJECUCION
clear
echo -e "----------------LOG DE BAJA DE USUARIOS---------------------------"
echo ""
echo ""


cat /var/log/bajaUsuario.log && exit 1


./menu.sh