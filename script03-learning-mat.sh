#!/bin/bash

number1=100
number2=2000
number3=300
number4=5

echo "Arithmetic operations using expr:"
echo "30 + 40 = $(expr 30 + 40)"
echo "30 - 40 = $(expr 30 - 40)"
echo "40 / 2 = $(expr 40 / 2)"
echo "50 * 2 = $(expr 50 \* 2)"

echo "Arithmetic operations using variables:"
echo "$number1 + $number2 + $number3 + $number4 = $(expr $number1 + $number2 + $number3 + $number4)"
echo "$number1 - $number2 - $number3 - $number4 = $(expr $number1 - $number2 - $number3 - $number4)"
# For division, use bc for floating-point arithmetic
result=$(echo "scale=2; ($number1 + $number2 - $number3) / $number4")
echo "($number1 + $number2 - $number3) / $number4 = $result"
