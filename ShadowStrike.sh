#!/bin/bash

# ASCII Art Header
clear
echo "  _________.__                .___             "
echo " /   _____/|  |__ _____     __| _/______  _  __"
echo " \_____  \ |  |  \\__  \   / __ |/  _ \ \/ \/ /"
echo " /        \|   Y  \/ __ \_/ /_/ (  <_> )     / "
echo "/_______  /|___|  (____  /\____ |\____/ \/\_/  "
echo "        \/      \/     \/      \/              "
echo "=============================================="
echo "     SHADOWSTRIKE: THE ULTIMATE CYBER ARSENAL"
echo "            Created by Soham Datta"
echo "=============================================="
echo ""

# Menu
echo "Select the tool categories you want to install (space-separated numbers):"
echo "1) Top 10 Tools"
echo "2) Information Gathering"
echo "3) Vulnerability Analysis"
echo "4) Web Applications"
echo "5) Password Attacks"
echo "6) Wireless Attacks"
echo "7) Exploitation Tools"
echo "8) Sniffing & Spoofing"
echo "9) Post Exploitation"
read -p "Your choice: " choices

# Tool options
declare -A options=(
  [1]="kali-tools-top10"
  [2]="kali-tools-information-gathering"
  [3]="kali-tools-vulnerability"
  [4]="kali-tools-web"
  [5]="kali-tools-passwords"
  [6]="kali-tools-wireless"
  [7]="kali-tools-exploitation"
  [8]="kali-tools-sniffing-spoofing"
  [9]="kali-tools-post-exploitation"
)

# Update and install
echo "Updating system repositories..."
sudo apt update && sudo apt upgrade -y

for choice in $choices; do
  package=${options[$choice]}
  if [ -n "$package" ]; then
    echo "Installing $package..."
    sudo apt install -y $package
  else
    echo "Invalid option: $choice"
  fi
done

echo ""
echo "🔥 ShadowStrike: Your cyber arsenal is fully equipped! 🔥"
