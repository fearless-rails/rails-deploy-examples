#!/bin/sh
exec 2>&1

trap 'kill -HUP %1' 1 2 13 15

god --no-daemonize --config-file /etc/god/master.god --no-syslog & wait