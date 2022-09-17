#! /usr/bin/env bash
curl -fSL -o "./blackbox_exporter-$1.linux-$2.tar.gz" \
  "https://github.com/prometheus/blackbox_exporter/releases/download/v$1/blackbox_exporter-$1.linux-$2.tar.gz"
tar xzvf ./blackbox_exporter-$1.linux-$2.tar.gz
cp ./blackbox_exporter-$1.linux-$2/* ./
