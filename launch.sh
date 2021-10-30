#!/bin/sh
if [ ! -f ./configuration.lua ]
then
    echo "Please insert the required variables into configuration.example.lua. Then, you need to rename configuration.example.lua to configuration.lua!"
else
    while true; do
        # FIXME magic number needs to be moved to lua or whatever
        mkdir -p /tmp/mattata/
        luajit -e "require('mattata').run({}, require('configuration'))"
        echo "bot has stopped!"
        sleep 1s
    done
fi
