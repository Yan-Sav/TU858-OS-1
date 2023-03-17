#!/bin/bash
PS3="Choose your option: "
cal=("Sum" "Subt" "Div" "Mult" "Quit")
select i in "${cal[@]}" ; do
    case $i in
        "Sum")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1+$v2))"
            ;;
        "Subt")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1-$v2))"
            ;;
        "Div")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1/$v2))"
            ;;
        "Mult")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1*$v2))"
            ;;
        "Quit")
            echo "Quitting the menu"
            break
            ;;
        *)
            echo "invalid option $REPLY"
            ;;
        esac
    done