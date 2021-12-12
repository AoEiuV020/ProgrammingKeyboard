#!/bin/sh
# 打印最新版本的更新日志，
# 关键是以markdown的格式加粗第一行，
set -e
old=$PWD
cd $(dirname $0)
cat ./ChangeLog.txt |sed '1d' |sed '/^$/,$d;1d' |sed '1s/，$//;1s/^\(.*\)$/### \1\n/'
