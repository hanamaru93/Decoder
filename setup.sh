#!/bin/bash

banner(){
    echo "X==========================================================X"
    echo "| ██████  ███████  ██████  ██████  ██████  ███████ ██████  |"
    echo "| ██   ██ ██      ██      ██    ██ ██   ██ ██      ██   ██ |"
    echo "| ██   ██ █████   ██      ██    ██ ██   ██ █████   ██████  |"
    echo "| ██   ██ ██      ██      ██    ██ ██   ██ ██      ██   ██ |" 
    echo "| ██████  ███████  ██████  ██████  ██████  ███████ ██   ██ |"
    echo "X=====================-by Hanamaru-========================X"
    echo "************************************************************"
    echo "*------------>| Welcome to Decoder Setup |<----------------*"
    echo "************************************************************"
    echo ""
    echo ""
}


echo "-> Press Enter to Start Setup."
read



contador=0

while [ $contador -le 5 ]; do
    banner
    echo " - Creating folders."
    sleep 1
    clear
    banner
    echo " - Creating folders.."
    sleep 1
    clear
    banner
    echo " - Creating folders..."
    sleep 1
    clear
    banner
    echo " - Creating folders...."
    clear
    ((contador++))  # Incrementa o contador
done

mkdir ~/decoder

contador=0

while [ $contador -le 5 ]; do
    banner
    echo " - Cloning script on folder."
    sleep 1
    clear
    banner
    echo " - Cloning script on folder.."
    sleep 1
    clear
    banner
    echo " - Cloning script on folder..."
    sleep 1
    clear
    banner
    echo " - Cloning script on folder...."
    clear
    ((contador++))  # Incrementa o contador
done

cp ./decoder.py ~/decoder/
chmod +x ~/decoder/decoder.py

contador=0

while [ $contador -le 5 ]; do
    banner
    echo " - Creating commands."
    sleep 1
    clear
    banner
    echo " - Creating commands.."
    sleep 1
    clear
    banner
    echo " - Creating commands..."
    sleep 1
    clear
    banner
    echo " - Creating commands...."
    clear
    ((contador++))  # Incrementa o contador
done

echo "alias decoder='~/decoder/decoder.py'" >> ~/.bashrc
source ~/.bashrc

sleep 3
echo "*****Thanks for use Decoder.******"
sleep 3
echo "Done."

