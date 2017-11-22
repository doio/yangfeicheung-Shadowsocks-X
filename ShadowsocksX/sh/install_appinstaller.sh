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
sudo cp app-installer "$INSTALL_DIR"
sudo chown root:admin "$INSTALL_DIR/app-installer"
sudo chmod a+rx "$INSTALL_DIR/app-installer"

# warning: command with +s cannot launch application,error message: The application with bundle ID (null) is running setugid(), which is not allowed.
# http://blog.csdn.net/taiyang1987912/article/details/40651623
# sudo chmod +s "$INSTALL_DIR/app-installer"

echo done
