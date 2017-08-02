#!/bin/sh

result=`which socat`
if [ $? != 0 ]; then
    echo "\033[0;31m[!] Not found socat.\033[0;39m"
    echo "\033[0;32m[+] Installing socat.\033[0;39m"
    apt-get install socat
fi

ln -fs $(pwd)/pwncat /usr/local/bin/pwncat
