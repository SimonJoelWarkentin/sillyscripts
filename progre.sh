#!/bin/bash

#This is a completely useless progress bar.
#You could, for example, substitute some of the fields with something else to fool your collegues who now nothing about linux.

echo "Welcome to this useless progress bar"
sleep 0.1

while true; do
    read -p "Are you sure you want to continue? (Y/n) " user_input
    case $user_input in
        [Yy] | "" )
            echo "Progress starting"
            break
            ;;
        [Nn] )
            echo "Good choice"
            exit
            ;;
        * )
            echo "What???"
            sleep 0.2
            ;;
    esac
done

sleep 1

for i in $(seq 0 5 100); do
    formatted_percentage=$(printf "%3d%%" $i)

    num_hashes=$((i / 5))
    if [[ $i -eq 100 ]]; then
        num_hashes=$((num_hashes + 1))
    fi
    hashes=$(printf '#%.0s' $(seq 1 $num_hashes))

    num_dots=$((20 - num_hashes))
    dots=$(printf '.%.0s' $(seq 1 $num_dots))

    echo -ne "[${formatted_percentage}] [${hashes}${dots}]\r"

    if [[ $i -eq 90 ]]; then
        sleep 1
    elif [[ $i -eq 95 ]]; then
        sleep 2.5
    else
        sleep 0.5
    fi
done

echo -e "\nProgress complete"
sleep 0.2
echo "Congrats, you accomplished nothing."
sleep 0.2
echo "Thank you for wasting your time!"
