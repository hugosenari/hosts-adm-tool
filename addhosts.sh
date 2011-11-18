#! /bin/sh
ln -s /etc/.hosts/hosts-available/$1 /etc/.hosts/hosts-enabled/$1
echo ""> /etc/.hosts/hosts-enabled/nothing