#!/bin/bash
groupadd -g $gid $group
useradd -u $uid -g $gid $user
cd /home/$user
exec su $user -s /usr/bin/fish
