#!/bin/bash
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
echo "Press Enter to Start Setup.........."
read
sleep 3
echo "Creating folders...."
sleep 3
mkdir ~/decoder
echo "Cloning script on folder....."
sleep 3
cp ./decoder.py ~/decoder/
chmod +x ~/decoder/decoder.py
sleep 3
echo "Creating commands........."
sleep 3
echo "alias decoder='~/decoder/decoder.py'" >> ~/.bashrc
source ~/.bashrc
sleep 3
echo "Thanks for use Decoder."
sleep 3
echo "Done."

