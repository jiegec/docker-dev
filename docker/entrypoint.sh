#!/bin/bash
# setup user
groupadd -g $gid $group
useradd -u $uid -g $gid -G sudo $user

# timezone
rm -f /etc/localtime
ln -s $tz /etc/localtime

# services
sudo service ssh start

# switch user
chsh -s /usr/bin/fish $user
cd /home/$user
exec su $user
