#!/bin/bash
xauth add <output line of "xauth list" that corresponds to your display>;
PASSWORD=$(rofi -dmenu -password);
echo $PASSWORD | sudo cryptsetup open /dev/disk/by-uuid/<uuid of your disk/partition> amazingstick;
sudo mount /dev/mapper/amazingstick /mnt/amazingstick;
