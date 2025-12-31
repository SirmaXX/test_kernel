#!/bin/sh

RED='\033[0;31m'
NC='\033[0m'

clear
echo -e "${RED}"
cat /etc/banner.txt
echo -e "${NC}"
echo "Özel Linux Dağıtımınıza Hoşgeldiniz!"
echo "Kernel Versiyonu: $(uname -r)"
