#!/bin/bash

SERVER_DIR=$1

if [ ! -d "$SERVER_DIR/map-info-service" ];then
	mkdir $SERVER_DIR/map-info-service
fi

if [ -e map-info-service-provider*.jar ];then
	rm -f $SERVER_DIR/map-info-service/*.jar && cp map-info-service-provider*.jar $SERVER_DIR/map-info-service/ && echo "update map-info success"
fi

if [ ! -d "$SERVER_DIR/device-management" ];then
	mkdir $SERVER_DIR/device-management
fi

if [ -e device-management-service*.jar ];then
	rm -f $SERVER_DIR/device-management/*.jar && cp device-management-service*.jar $SERVER_DIR/device-management/ && echo "update device-management success"
fi


if [ ! -d "$SERVER_DIR/traffic-management" ];then
	mkdir $SERVER_DIR/traffic-management
fi

if [ -e traffic-management-service*.jar ];then
	rm -f $SERVER_DIR/traffic-management/*.jar && cp traffic-management-service*.jar $SERVER_DIR/traffic-management/ && echo "update traffic-management-service success"
fi

if [ ! -d "$SERVER_DIR/route-service" ];then
	mkdir $SERVER_DIR/route-service
fi
if [ -e route-service-provider*.jar ];then
	rm -f $SERVER_DIR/route-service/*.jar && cp route-service-provider*.jar $SERVER_DIR/route-service/ && echo "update route-service success"
fi

if [ ! -d "$SERVER_DIR/vehicle-communication" ];then
	mkdir $SERVER_DIR/vehicle-communication
fi

if [ -e vehicle-communication*.jar ];then
	rm -f $SERVER_DIR/vehicle-communication/*.jar && cp vehicle-communication*.jar $SERVER_DIR/vehicle-communication/ && echo "update vehicle-communication-service success "
fi

if [ ! -d "$SERVER_DIR/vehicle-info-service" ];then
	mkdir $SERVER_DIR/vehicle-info-service
fi

if [ -e vehicle-info*.jar ];then

        rm -f $SERVER_DIR/vehicle-info-service/*.jar && cp vehicle-info*.jar $SERVER_DIR/vehicle-info-service/ && echo "update vehicle-info-service success"
fi

if [ ! -d "$SERVER_DIR/dispatch-app" ];then
	mkdir $SERVER_DIR/dispatch-app
fi

if [ -e dispatch-app*.jar ];then
	rm -f $SERVER_DIR/dispatch-app/*.jar && cp dispatch-app-*.jar $SERVER_DIR/dispatch-app/ && echo "update dispatch-app success"
fi

if [ -n "$2"];then
	if [ $2 == "dechuang" ]; then
		echo "last dechuang"
		if [ ! -d "$SERVER_DIR/external_dechuang" ];then
			mkdir $SERVER_DIR/external_dechuang
			echo "aass"
		fi
	
		if [ -e external_dechuang*.jar ];then
			cp external_dechuang*.jar $SERVER_DIR/external_dechuang/ && echo "update external_dechuang success"
		fi
	fi
else
	echo "only update comm module"
fi
