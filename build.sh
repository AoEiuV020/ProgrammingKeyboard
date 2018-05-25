#!/bin/sh
versionName="2_0"
old="$(pwd)"
cur="$(dirname $0)"
cd $cur

cd bds
target="../build/ProgrammingKeyboard-$versionName.bds"
rm "$target"
zip -r "$target" *

cd "$old"
