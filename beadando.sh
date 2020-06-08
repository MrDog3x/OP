#!/bin/bash

#Beadando
while getopts "ehn" matek ; do
case $matek in
	e)
echo "Kerem az elso számot:"
read a
echo "Kérem a második számot:"
read b
echo "Milyen műveletet szeretnél elvégezni:"
echo "1: Osszeadas"
echo "2: Kivonas"
echo "3: Szorzas"
echo "4: Osztas"
read szm

case $szm in 
1)res=`echo $a + $b | bc`;;
2)res=`echo $a - $b | bc`;;
3)res=`echo $a \* $b | bc`;;
4)res=`echo "scale=2; $a / $b" | bc`;;
esac
echo "Eredmény: $res"

	;;
	h)
echo "Kerek egy  számot:"
read a
echo "Milyen müveletet szeretnél elvégezni?"
echo "1: Négyzetre emelés"
echo "2: Negyzetgyökvonás"
echo "3: Logaritmus"
read szm

case $szm in
1) res=`echo $a \* $a | bc`;;
2) res=$(echo "sqrt($a)"|bc);;
3) res=$(echo "l($a)/l(10)" | bc -l);;
esac
echo "Eredmeny: $res"
;;
	n)
echo "Kerek egy radiant:"
read a
echo "Mit szeretnel kiszamolni:"
echo "1: Szinusz"
echo "2: Koszinusz"
read szm


case $szm in
1)
res=$(echo "s($a)"| bc -l);;
2)
res=$(echo "c($a)"| bc -l);;
esac
echo "Eredmeny: $res"
;;
	*) usage
	   echo "Rossz betű"
esac
done
