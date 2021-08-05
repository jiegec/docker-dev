#!/bin/bash
useradd -u $uid $user
cd /home/$user
exec su $user -s /usr/bin/fish
