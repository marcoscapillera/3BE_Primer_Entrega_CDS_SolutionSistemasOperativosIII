#!/usr/bin/env bash
#
# Gestion de Usuarios - 
#
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


dirLog="/var/log/backup_dbcds.log"
fecha=`date +%F`
hora=`date +%H:%M`

echo "$1 Fecha $fecha $hora " >> $dirLog