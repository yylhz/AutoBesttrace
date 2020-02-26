#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/wn789/VPS-/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(202.223.49.175 15.164.139.36 173.82.243.187 116.93.120.82 92.38.188.209 114.38.73.140 220.246.217.243 104.251.231.98 45.32.48.39 38.147.166.200)
ip_addr=(Ablenet日本 Amazon韩国 Cloudcone美国 Cloudsigma菲律宾 Gcore伯力 MoonVM台湾 Nathosts香港HKT VPSMS美国CN2 VULTR日本 修罗云洛杉矶)
# ip_len=${#ip_list[@]}

for i in {0..9}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
