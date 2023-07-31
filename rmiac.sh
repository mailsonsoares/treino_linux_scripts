#!/bin/bash
echo "Excluindo os diretórios..."
rmdir /publico
rmdir /adm
rmdir /ven
rmdir /sec
sleep 2
echo "Excluindo usuários..."
userdel carlos -r
#adduser carlos GRP_ADM
userdel maria -r
#adduser maria GRP_ADM
userdel joao -r
#adduser joao GRP_ADM
userdel debora -r
#adduser debora GRP_VEN
userdel sebastiana -r
#adduser sebastiana GRP_VEN
userdel roberto -r
#adduser roberto GRP_VEN
userdel josefina -r
#adduser josefina GRP_SEC
userdel amanda -r
#adduser amanda GRP_SEC
userdel rogerio -r
#adduser rogerio GRP_SEC
echo "Excluindo os grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
sleep 2

