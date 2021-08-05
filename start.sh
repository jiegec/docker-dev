#!/bin/bash
user=$USER
uid=$(id -u $USER)
group=$(id -ng $USER)
gid=$(id -g $USER)
name=docker-dev

state=$(docker container inspect -f '{{.State.Running}}' $name)
if [ "$state" = "" ];
then
	sudo docker run -it -p 2222:22 -e user="$user" -e uid="$uid" -e group="$group" -e gid="$gid" --name $name -v $HOME:$HOME docker-dev
elif [ "$state" = "false" ];
then
	sudo docker start $name
	sudo docker attach $name
else
	sudo docker attach $name
fi
