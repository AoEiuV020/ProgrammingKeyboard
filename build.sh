#!/bin/sh
versionName=$(./latest-version.sh)
old="$(pwd)"
cur="$(dirname $0)"
cd $cur

mkdir -p build/
cd bds
target="../build/ProgrammingKeyboard-$versionName.bds"
rm -f "$target"
zip -r "$target" *

cd "$old"
