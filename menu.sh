#!/bin/bash
PS3="Choose your option: "
cal=("List files" "Show free disk space " "Show system path " "Display command history " "Back up Files" "Exit")
select i in "${cal[@]}" ; do
    case $i in
        "List files")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1+$v2))"
            ;;
        "Show free disk space")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1-$v2))"
            ;;
        "Show system path")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1/$v2))"
            ;;
        "Display command history")
            read -p "Enter number 1:" v1
            read -p "Enter number 2:" v2
            echo "Sum of v1 and v2 is: $(($v1*$v2))"
            ;;
        "Back up Files")
            echo "Backing up files."
            ;;
        "Exit")
            echo "Quitting the menu."
            break
            ;;
        *)
            echo "invalid option $REPLY"
            ;;
        esac
    done