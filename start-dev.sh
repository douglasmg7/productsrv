#!/usr/bin/env bash
[[ `systemctl status mongodb | awk '/Active/{print $2}'` == inactive ]] && sudo systemctl start mongodb
go build && ./zoomproducts