#!/bin/sh


if [ ! -f /certificates/iot.localdev.me.key ]
then
  cd /certificates

  openssl req -x509 -newkey rsa:2048  -days 3650 -nodes \
    -keyout iot.localdev.me.key -out iot.localdev.me.crt -subj "/CN=iot.localdev.me" \
    -addext "subjectAltName=DNS:iot.localdev.me"

  echo "iot.localdev.me.key Certificates generated"
else
  echo "iot.localdev.me.key Certificates already generated"
fi


if [ ! -f /certificates/influxdb.localdev.me.key ]
then
  cd /certificates

  openssl req -x509 -newkey rsa:2048  -days 3650 -nodes \
    -keyout influxdb.localdev.me.key -out influxdb.localdev.me.crt -subj "/CN=influxdb.localdev.me" \
    -addext "subjectAltName=DNS:influxdb.localdev.me"

  echo "influxdb.localdev.me.key Certificates generated"
else
  echo "influxdb.localdev.me.key Certificates already generated"
fi