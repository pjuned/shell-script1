#! /bin/bash
echo enter 2 numbers to get their sum
 int number1=$1
 int number2=$2

 int sum=$(($number1)+($number2))

 echi "sum is $(sum)"