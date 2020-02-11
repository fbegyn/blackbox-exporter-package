#!/bin/sh
systemctl daemon-reload
systemctl enable blackbox_exporter.service
