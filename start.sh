#!/bin/bash

# Make and chown influxdb data directories
if [ ! -d /data/influxdb ]
then
	mkdir /data/influxdb 
	chown influxdb:influxdb /data/influxdb
fi

# Make and chown grafana data directories
if [ ! -d /data/grafana ]
then
        mkdir /data/grafana
        cp /usr/src/app/grafana/grafana.db /data/grafana/grafana.db
        chown -R grafana:grafana /data/grafana/grafana.db
fi

# Make and chown cbms data directories
if [ ! -d /data/cbms ]
then
	service svm stop
	cp -R /var/cbms/ /data/cbms/
	chown -R cbms:cbms /data/cbms
	service svm start
fi

echo "CBMS Studio Started"
