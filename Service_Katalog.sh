#! /usr/bin/bash
clear
echo
echo "****************** Service Katalog ***********************"
echo "*                                                        *"
echo "*    Demo, Wittduen 2025                                 *"
echo "*                                                        *"
echo "*    Hans--------IGW01(172.16.100.1)                     *"
echo "*                 |                                      *"
echo "*                KGW01(172.16.100.2)                     *"
echo "*                 |                                      *"
echo "*                 ==================SVC01(172.16.100.3)  *"
echo "*                 |                                      *"
echo "*    Hamburg---- BGW01(172.16.100.4)                     *"
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
            sudo ansible-playbook -i /home/cumulus/HH/inventory/files/hosts /home/cumulus/HL/.B/main.yaml
            break
            ;;
         "Ende")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
