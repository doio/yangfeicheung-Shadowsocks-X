#!/bin/sh

#  fix_dir_owner.sh
#  ShadowsocksX


LAUNCH_AGENTS_DIR="$HOME/Library/LaunchAgents"
sudo chown $@ "$HOME/Library/LaunchAgents"

