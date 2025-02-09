#!/bin/bash

echo "Start Clash Core Download !"
echo "Current Path: $PWD"

mkdir -p files/etc/openclash && cd files/etc/openclash



CLASH_META_URL="https://github.com/SunHHB/ShellCrash/raw/refs/heads/dev/bin/meta/clash-linux-armv8"

CORE_MATE="https://github.com/SunHHB/ShellCrash/raw/master/bin/meta/clash-linux-amd64.tar.gz"


GEO_MMDB="https://github.com/alecthw/mmdb_china_ip_list/raw/release/lite/Country.mmdb"
GEO_SITE="https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geosite.dat"
GEO_IP="https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geoip.dat"
GEO_META="https://github.com/MetaCubeX/meta-rules-dat/raw/release/geoip.metadb"
	
 
curl -sfL -o Country.mmdb $GEO_MMDB
curl -sfL -o GeoSite.dat $GEO_SITE
curl -sfL -o GeoIP.dat $GEO_IP
curl -sfL -o GeoIP.metadb $GEO_META


mkdir ./core/ && cd ./core/

# curl -sfL -o meta.tar.gz $CORE_MATE && tar -zxf meta.tar.gz && mv -f CrashCore clash_meta
#wget -qO- $CORE_MATE | tar xOvz > clash_meta

wget -qO- $CLASH_META_URL > clash_meta

chmod +x ./clash* && rm -rf ./*.gz

echo "openclash date has been updated!"

exit 0
