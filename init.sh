#!/bin/bash

# start the database
printf "[*] Starting Postgres and MSF\n"

service postgresql start &

while true;do
    if pgrep postgres > /dev/null;
    then
        sleep 7
        msfconsole
        break
    fi
done
exit
