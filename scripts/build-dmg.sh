#!/bin/zsh

set -e

test -f Artify.dmg && rm -f Artify.dmg

appdmg ./appdmg.json ./Artify.dmg

exit 0
