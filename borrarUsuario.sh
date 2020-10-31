#!/usr/bin/env bash
#
## Gestion de Usuarios - 
#
# Tercer Entrega - Proyecto Sistemas Operativos III  ESI-Buceo -  Profesor Daniel García
# Autor: Andrea Bazzini, Marcos Bueno, Ruben Gainza y Mathías Torterolo.


#VARIABLES 
admin=$(who)
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
#EJECUCION

clear
echo  "----------------------BORRAR USUARIO------------------------------"
    
echo -e "Ingrese el nombre del usuario a borrar:"
read user

if grep -qiw $user /etc/passwd; then

sudo userdel -r $user
echo "En proceso..."
sleep 3

echo -e "Se borro usuario correctamente"
sh logsBajaUsuario.sh "- BAJA USUARIO: El administrador $admin elimino usuario $user del sistema"

    
else
    
echo "El usuario no existe"
    
fi

read -p "Press enter para volver al menu" 

    
    
./menu.sh
#FIN BASH