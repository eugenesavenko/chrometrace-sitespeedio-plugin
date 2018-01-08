#!/bin/bash

BASE_DIR="$(pwd)/$(dirname $0)/.."

docker run --rm \
    -v $BASE_DIR:/chrometrace-sitespeedio-plugin \
    -v $BASE_DIR/sitespeed-result/:/sitespeed.io/sitespeed-result \
    sitespeedio/sitespeed.io \
    -n 1 \
    --plugins.add /chrometrace-sitespeedio-plugin \
    --browsertime.chrome.collectTracingEvents \
    https://mobile.twitter.com/sitespeedio
