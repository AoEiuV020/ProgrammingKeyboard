#!/bin/sh
versionName=$(./latest-version.sh)
old="$(pwd)"
cur="$(dirname $0)"
cd $cur

cd bds
target="../build/ProgrammingKeyboard-$versionName.bds"
adb push "$target" /sdcard/baidu/ime/skins

cd "$old"
