#!/bin/bash
# setup user
groupadd -g $gid $group
useradd -u $uid -g $gid -G sudo $user

# services
sudo service ssh start

# switch user
chsh -s /usr/bin/fish $user
cd /home/$user
exec su $user
