#!/bin/env bash

./fetch.sh $1 $2

sed "s/vx.y.z/v$1/g" ./nfpm.yaml > ./nfpm-temp.yaml

nfpm pkg --config="nfpm-temp.yaml" --target="blackbox-exporter_$1_$2.deb"

rm -rf ./bin ./blackbox.yml ./blackbox_exporter-$1.linux-$2 ./blackbox_exporter-$1.linux-$2.tar.gz ./nfpm-temp.yaml
