#! /bin/bash
DIR="$(dirname $(readlink -f $0))"
FILE=~/.ssh/id_rsa.pub
if [ -f "$FILE" ]; then
	echo "$FILE exists already"
    else
	echo "let's do it!"
	echo "Email:"
	read email 
	cd ~/.ssh/ && ssh-keygen -t rsa -b 4096 -C "$email"
	cd $DIR
fi
cat ~/.ssh/id_rsa.pub
