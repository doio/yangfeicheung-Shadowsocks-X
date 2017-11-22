#!/bin/sh

#  install_kcptun.sh
#  ShadowsocksX

VERSION="20171113"

cd `dirname "${BASH_SOURCE[0]}"`
INSTALL_DIR="$HOME/Library/Application Support/ShadowsocksX-App"
sudo mkdir -p "$INSTALL_DIR/kcptun_$VERSION"

cp -f kcptun_client "$INSTALL_DIR//kcptun_$VERSION/"
rm -f "$INSTALL_DIR/kcptun_client"
ln -s "$INSTALL_DIR/kcptun_$VERSION/kcptun_client" "$INSTALL_DIR/kcptun_client"

echo "install kcptun client done"
