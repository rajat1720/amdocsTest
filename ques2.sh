#!/bin/bash
read num1 operator num2

case $operator in
    +)
        result=$(echo "$num1 + $num2" | bc)
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        ;;
    \*)
        result=$(echo "$num1 * $num2" | bc)
        ;;
    /)
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Invalid operator."
        exit 1
        ;;
echo "Result: $result"
