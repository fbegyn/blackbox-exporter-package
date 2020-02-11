#!/bin/env bash
curl -fSL -o "./blackbox_exporter-$1.$2.tar.gz" \
  "https://github.com/prometheus/blackbox_exporter/releases/download/v$1/blackbox_exporter-$1.$2.tar.gz"

tar xzvf ./blackbox_exporter-$1.$2.tar.gz

# get binaries
mkdir ./bin
cp ./blackbox_exporter-$1.$2/blackbox_exporter ./bin/

# Cp config files
cp ./blackbox_exporter-$1.$2/blackbox.yml ./
