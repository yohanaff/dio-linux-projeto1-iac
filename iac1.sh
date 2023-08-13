#!/bin/bash

echo "Creating directories"

mkdir /public
mkdir /adm
mkdir /sales
mkdir /sec

echo "Creating user groups"

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SEC

echo "Creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_ADM -c "Carlos da Silva"
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_ADM -c "Maria da Silva"
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_ADM -c "Joao da Silva"

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SALES -c "Debora da Silva"
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SALES -c "Sebastiana da Silva"
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SALES -c "Roberto da Silva"

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SEC -c "Josefina da Silva"
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SEC -c "Amanda da Silva"
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Pass123) -G GRP_SEC -c "Rogerio da Silva"

echo "Specifying directory permissions"

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "End..."



