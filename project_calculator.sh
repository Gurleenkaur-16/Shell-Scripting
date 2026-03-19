#!/bin/bash
echo ""
echo "CALCULATOR"
echo ""
echo "SELECT YOUR CHOICE."
echo ""
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo ""

# asking user their choice 
read -p "Enter your choice from [1-4] : " choice 

echo ""

case $choice in 
1)echo " Addition ";;
2)echo " Subtraction";;
3)echo " Multiplication";;
4)echo " Division";;
*)
echo "Invalid choice "
exit 1
esac
 
# asking user to enter the number "
echo ""
read -p "Enter the First number:" num1
read -p "Enter the second number:" num2

case $choice in 
1)result=$((num1 + num2))
echo "Result = $result"
;;

2)result=$((num1-num2))
echo "Result = $result"
;;

3)result=$((num1*num2))
echo "Result = $result"
;;

4)result=$((num1/num2))
echo "Result = $result"
;;

*)
echo "Invalid choice "
esac

