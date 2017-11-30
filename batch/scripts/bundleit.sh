#!/bin/bash

bundleName=$(basename $(pwd))
git bundle create $bundleName --all
mount /dev/sdc4 
ret=$?

# already mounted
if [[ $ret -eq 32 ]]; then
  mkdir -p /mnt/bundles
  cp $bundleName /mnt/bundles
  exit 0
fi

if [[ $ret -ne 0 ]]; then
  echo "no drive" $ret
  exit 1
fi
mkdir -p /mnt/bundles
cp $bundleName /mnt/bundles
umount /mnt

