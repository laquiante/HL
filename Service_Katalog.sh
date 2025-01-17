#! /usr/bin/bash
clear
echo
echo "****************** Service Katalog ***********************"
echo "*                                                        *"
echo "*    Demo, Wittduen 2025                                 *"
echo "*                                                        *"
echo "*                                                        *"
echo "*    1  Hausputz                                         *"
echo "*    2  IPv6  MVP                                        *"
echo "*    3  Ende                                             *"
echo "*                                                        *"
echo "********************** end *******************************"
echo
echo 
PS3='Auswahl: '
options=("A" "B" "Ende")
select opt in "${options[@]}"
do
    case $opt in
        "A")
            echo "Auswahl Hausputz"
            sudo ansible-playbook -i /home/cumulus/HH/inventory/files/hosts /home/cumulus/HL/.cleanup/main.yaml
            break
            ;;
        "B")
            echo "Auswahl IPv6 MVP"
            sudo ansible-playbook -i /home/cumulus/HH/inventory/files/hosts /home/cumulus/HL/.A/main.yaml
            break
            ;;
         "Ende")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
