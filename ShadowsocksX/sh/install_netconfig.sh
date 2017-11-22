#!/bin/sh

#  install_helper.sh
#  shadowsocks
#
#  Created by clowwindy on 14-3-15.

# http://www.cnblogs.com/sunfie/p/5943979.html
# enter directory of script
cd `dirname "${BASH_SOURCE[0]}"`
INSTALL_DIR="$HOME/Library/Application Support/ShadowsocksX-App"
sudo mkdir -p "$INSTALL_DIR"
sudo cp ss-netconfig "$INSTALL_DIR"
sudo chown root:admin "$INSTALL_DIR/ss-netconfig"
sudo chmod a+rx "$INSTALL_DIR/ss-netconfig"

# http://blog.csdn.net/taiyang1987912/article/details/40651623
sudo chmod +s "$INSTALL_DIR/ss-netconfig"

echo done
