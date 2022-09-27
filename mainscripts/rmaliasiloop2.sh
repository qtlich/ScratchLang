#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
echo
if ! [ -f .var/.bashrc ]; then
  echo -e "${RED}Error: alias has not been created or .var/.bashrc file has been deleted.${NC}"
  exit
fi
echo -e "${RED}WARNING:${NC} This will remove the scratchlang command."
echo "Continue? [Y/N]"
read -sn 1 input2
echo
if [ h$input2 == hY ] || [ h$input2 == hy ]; then
  rm /usr/bin/scratchlang
elif [ h$input2 == hn ] || [ h$input2 == hN ]; then
  echo
else
  echo -e "${RED}$input2 is not an option.${NC}"
  ./rmaliasiloop.sh
fi
