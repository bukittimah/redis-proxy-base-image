#!/bin/sh
echo "Your container args are: '$*'"
cmd="/usr/bin/redis-proxy --protected-mode no"
if [ $# -gt 0 ] 
then
    cmd="$*"
fi
echo "Your cmd is: '$cmd'"
busybox chmod 777 /core
exec busybox su -l nonroot -s "/bin/sh" -c "$cmd"
