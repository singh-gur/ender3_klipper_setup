#!/bin/sh

pushd ~/klipper_config

git clone git@github.com:hawk-i-/ender3_klipper_setup.git

[ -s printer.cfg ] && mv printer.cfg printer.backup.cfg

cat << eof >> printer.cfg

[include ender3_klipper_setup/printer.cfg]

eof
popd