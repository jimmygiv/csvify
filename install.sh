#!/usr/bin/env bash

current="$(dirname $0)"

if [[ ! $(whoami) == "root" ]]; then
  echo "Need root to put file in bin directory"
  exit
fi

banner="   ____________    ______________  __\n"
banner+="  / ____/ ___/ |  / /  _/ ____/\ \/ /\n"
banner+=" / /    \__ \| | / // // /_     \  / \n"
banner+="/ /___ ___/ /| |/ // // __/     / /  \n"
banner+="\____//____/ |___/___/_/       /_/   \n"

printf "$banner"


cp $current/csv.pl /usr/bin/csv
chmod 755 /usr/bin/csv
printf "\n[*] Done. Use | csv to convert output to csv.\n"
