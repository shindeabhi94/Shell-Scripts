#!/bin/bash                                                                                                    
in=""
while [ "$in" != "exit" ]
do
    echo -n "bash-cli($mode) > " && read in
    if [ "$in" = "config" ]
    then
        mode="config"
    elif [ "$in" = "up" ]
    then
        mode=""
    elif [ "$in" = "exit" ]
    then
    break
    else
        if [ "$mode" = "config" ]
        then
            if [ "$in" = "list" ]
            then
                echo -e "1. Pune \n2. Mumbai \n3.Nandurbar"
            else
                echo "Invalid Option"
            fi
        else
            echo "Invalid Option"
        fi
    fi
done

exit
