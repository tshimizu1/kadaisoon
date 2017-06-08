#!/bin/bash

if [ $# -ne 2 ];then
    echo "USAGE:$0 integer1 integer2"
    exit
fi
gcd=
lcm=
GCD()
{
    a=$1
    b=$2
    if [ $a -lt $b ];then
        max=$b
        min=$a
    else
        max=$a
        min=$b
    fi
    if [ $(($max%$min)) -ne 0 ];then
        GCD $min $(($max%$min))
    fi
    gcd=$min
}
 
LCM()
{
    GCD $1 $2
    b=$(($1*$2))
    lcm=$(($b/$gcd))
}
GCD $1 $2
LCM $1 $2
 
echo $gcd


