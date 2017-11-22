#!/bin/sh

#  stop_kcptun.sh
#  ShadowsocksX

launchctl stop com.jumboapps.shadowsocksx.kcptun
launchctl unload "$HOME/Library/LaunchAgents/com.jumboapps.shadowsocksx.kcptun.plist"
