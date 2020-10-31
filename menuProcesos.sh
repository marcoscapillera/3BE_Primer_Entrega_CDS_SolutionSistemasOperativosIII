#!/usr/bin/env bash
#
#
# Gestion de Usuarios - 
#
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.

## ------------------------------- VARIABLES -------------------------------- #


	ARCHIVO_LISTA_DE_SERVICIOS="litaDeUsuarios.txt"
	ALTA="altaUsuario.sh"

	DIA=`date +"%d/%m/%Y"`
	HORA=`date +"%H:%M"`

	SEP=":"

    # ---------------------------VALIDACIONES --------------------------------- #
	

    if [ $(whoami) != "root" ]; then #Comando whoami, usuario actual que esta logueado en el sistema e inicio el bash
		echo "Tienes que ser root para ejecutar este script"
		echo "Ejecuta "sudo su" usuario y contraseñra para ser root"
		exit 1
    fi

	#CAMBIA LOS PERMISOS A TODOS LOS BASH PARA PODER EDITAR, EJECUTAR, LEER.
	find . -type f -exec chmod 777 {} \;

    if [ ! -e "$HISTORIAL" ]; then

    	touch historial.txt

    fi

    
#MENU--------------------------------------------------------------------------- #

    clear

    echo ""

	echo -e "#########################################################"
	echo -e "#                                                       #"
	echo -e "#                Hospital Vida Sana                     #"
	echo -e "#           Admin Sys v 1.0 by CDS Solutions            #"
	echo -e "#                                                       #"
	echo -e "#########################################################"

echo "****Menu Procesos****"
echo ""
echo "1. Listar los procesos"
echo "2. Ver consumo de procesos"
echo "3. Mostrar los 10 ultimos procesos"
echo "3. Detener un proceso"
echo ""
echo -n "Ingrese opcion: "; read op
case $op in
1) ps aux;
read -p "Press enter para volver al menu" 
./menuPpal.sh

;;
2) vmstat;

read -p "Press enter para volver al menu" 
./menuPpal.sh

;;
3) 
ps -e > tempProcesos.txt; 
 tail -10 tempProcesos.txt;


read -p "Press enter para volver al menu" 
./menuPpal.sh
 
 ;;

 4) 
echo "Ingrese el numero del proceso: "
read procesos
echo "Dando de baja el proceso $procesos"
sleep 3
kill $procesos

read -p "Press enter para volver al menu" 
./menuPpal.sh
 
 ;;
esac


    