#!/bin/bash
HISTFILE=~/.bash_history
set -o history
PS3="Choose your option: "
cal=("List files" "Show free disk space" "Show system path" "Display command history" "Back up Files" "Exit")
select i in "${cal[@]}" ; do
    case $i in

        "List files")
            yourfilenames=`ls ./*`

            for eachfile in $yourfilenames
            do
                echo $eachfile
            done
            ;;

        "Show free disk space")
            df -H
            ;;

        "Show system path")
            echo "$PATH"
            ;;

        "Display command history")
            history | less
            ;;

        "Back up Files")
            echo "Backing up files."

            read -p "Please Enter Path:" r1
            parent=$(dirname "$r1")
            cd "$parent"

            mkdir BackupFolder

            cp -r $parent /workspaces/TU858-OS-1/BackupFolder
            
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