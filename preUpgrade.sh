#!/bin/sh

BRANCH_NAME=v$(curl -s https://cyberpanel.net/version.txt | sed -e 's|{"version":"||g' -e 's|","build":|.|g'| sed 's:}*$::')

rm -f /usr/local/panel_upgrade.sh
wget -O /usr/local/panel_upgrade.sh https://raw.githubusercontent.com/CodexAIL/PanelP/panel_upgrade.sh 2>/dev/null
chmod 700 /usr/local/panel_upgrade.sh
/usr/local/panel_upgrade.sh
