#!/bin/bash
user=$USER
uid=$(id -u $USER)
gid=$(id -G $USER)
name=docker-dev

state=$(docker container inspect -f '{{.State.Running}}' $name)
if [ "$state" = "" ];
then
	sudo docker run -it -e user=$user -e uid=$uid -e gid="$gid" --name $name -v $HOME:$HOME docker-dev
elif [ "$state" = "false" ];
then
	sudo docker start $name
	sudo docker attach $name
else
	sudo docker attach $name
fi
