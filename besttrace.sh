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

ip_list=(119.147.134.44 117.34.14.44 150.138.151.44 220.170.186.44 58.211.137.44 115.231.187.44 219.159.84.44 42.81.8.44 180.163.188.24 42.236.94.44 61.182.136.44 119.188.97.44 122.190.3.44 157.255.26.44 124.95.191.44 125.39.174.44 113.207.102.45 111.32.136.44 183.232.53.44 112.25.91.44)
ip_addr=()
# ip_len=${#ip_list[@]}

for i in {0..5}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
