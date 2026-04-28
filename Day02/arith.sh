#!/bin/bash    

#author:Vaibhav Kamble
#created:12 Feb 2026
#Description:Script of arithmetic calculator
#modified date:13th Feb 2026

read -t 5 -p "Enter first number: " num1    
read -t 5 -p "Enter second number: " num2

function add()
{
sum=$((num1 + num2))
echo "Sum is :$sum"
}

function difference()
{
difference=$((num1 - num2))
echo "Difference is: $difference"
}  

function Product()
{
Product=$((num1 * num2)) 
echo "Product is: $Product"
}         

function quotient()
{
if [ $num2 -eq 0 ]; then
echo "Division by zero is not allowed."
exit 1
fi

quotient=$((num1 / num2))  
echo "division is: $quotient"
}

add
difference
Product
quotient


