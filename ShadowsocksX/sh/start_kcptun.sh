#!/bin/sh

#  start_kcptun.sh
#  ShadowsocksX

chmod 644 "$HOME/Library/LaunchAgents/com.jumboapps.shadowsocksx.kcptun.plist"
launchctl load "$HOME/Library/LaunchAgents/com.jumboapps.shadowsocksx.kcptun.plist"
launchctl start com.jumboapps.shadowsocksx.kcptun
