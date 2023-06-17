#!/bin/sh

starter_fn(){
    echo "There are two doors in front of you: A and B."
    echo "Which door would you like to open? (A|B)."
}

read_choice(){
    read choice
    case $choice in
        A|a)
            echo "You chose door A."
            ./roomA.sh
            ;;
        B|b)
            echo "You chose door B."
            ./roomB.sh
            ;;
        *)
            echo "Try again!"
            read_choice
            ;;
    esac        
}


starter_fn
read_choice
