#!/bin/bash

AVAHI_CONF="/etc/avahi/avahi-daemon.conf"
[ $DOMAIN_NAME ] && { sed -i "s@.*domain-name=.*@domain-name=$DOMAIN_NAME@g" $AVAHI_CONF; }
[ $HOST_NAME ] && { sed -i "s@.*host-name=.*@host-name=$HOST_NAME@g" $AVAHI_CONF; }

# disable dbus in avahi conf
sed -i "s@.*enable-dbus=.*@enable-dbus=no@g" $AVAHI_CONF

# dbus needed technically
#dbus-daemon --system

# avahi start - foreground
avahi-daemon
