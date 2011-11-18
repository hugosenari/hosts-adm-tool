#! /bin/sh
cat /etc/.hosts/init>/etc/hosts;

#load system hosts
SYS_HOSTS="/etc/.hosts/hosts-enabled/*"
for host in $SYS_HOSTS; do
cat $host>>/etc/hosts;
done
echo "hosts changed"
