#!/bin/sh

if [ ! -z ${THESERVER+x} ]; then sed -i.bak s/reto3server/$THESERVER/ /root/.tsung/tsung.xml ; fi
sed -i.bak s/arrivalrate="500"/arrivalrate="$RATE"/ /root/.tsung/tsung.xml
sed -i.bak s/to="10"/to="$HITS"/ /root/.tsung/tsung.xml

tsung start
