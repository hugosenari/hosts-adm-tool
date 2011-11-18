#! /bin/sh
# hostsdaemon.sh
# loop forever
while :
do
echo ""> /etc/.hosts/hosts-enabled/nothing
inotifywait -r -e modify /etc/.hosts/hosts-enabled
. /etc/.hosts/updatehosts.sh
done