#!/bin/bash
#ejecutar possgresql
#su - postgres 
#sudo -u postgres -H -- psql -d muestra 

#psql -d muestra  " select * from usuario;"



#echo "-----Esta Funcionando-----"
#echo "sudo -u postgres -H -- psql -d muestra"
#sudo -u postgres -H -- psql -d muestra -c "SELECT * FROM usuario"

#creando variables.
DB="muestra"
user="postgres"

#creamos un arreglo;
 declare userSoporte=('carlos' 'mauricio' 'yarit');


for users in "${userSoporte[*]}"
   do 
       echo "$users"
   done



#creamos la consulta y la amacenamos en una variable para validar;
userSM=$(sudo -u $user psql -d $DB -c "select * from usuario where user_login = 'carlos';")
echo "$userSM"

if [ "$userSM"="carlos" ]
then
    echo "verdadero"
else    
    echo "no"
fi

#sudo -u $user psql -d $DB -c 
#"select * from usuarios"