#!/system/bin/sh
# This script is needed to set some device props

oplus_project=$(getprop ro.boot.prjname)
DIR="/odm/etc/$oplus_project"

if [ ! -d "$DIR" ]; then
# Sleep for 3s to fix mount issues on boot
  sleep 3
  mount /odm
fi

resetprop --file $DIR/build.default.prop
umount /odm

exit 0
