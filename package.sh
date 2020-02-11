#!/bin/env bash

./fetch.sh $1 $2

nfpm pkg --target blackbox_exporter-$1.$2.deb

rm -rf ./bin
rm -rf ./blackbox.yml
rm -rf ./blackbox_exporter-$1.$2.tar.gz
rm -rf ./blackbox_exporter-$1.$2
