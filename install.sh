#!/bin/bash

echo
echo "Installing requirements..."
echo
sudo apt update
sudo apt install figlet -y
chmod +x tanjirologanalyser.sh
echo
echo "Installation complete!"
echo
echo "Run the tool using:"
echo "./tanjirologanalyser.sh or using sudo bash tanjirologanalyser.sh"
