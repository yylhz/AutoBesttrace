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

ip_list=(112.5.37.138 119.188.248.87 223.166.92.235 222.186.136.65 153.36.110.17 119.188.240.24)
ip_addr=(泉州移动 山东联通 上海联通 镇江电信 徐州 山东)
# ip_len=${#ip_list[@]}

for i in {0..5}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
