#!/bin/bash
echo "Criando os diretórios..."
sleep 2
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."
sleep 2
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos..."
sleep 2
useradd carlos -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123456)  -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

echo "Alterando o proprietário para root e os grupos de cada diretório..."
sleep 2
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando as permisões de cada diretório..."
sleep 2
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!!!"
