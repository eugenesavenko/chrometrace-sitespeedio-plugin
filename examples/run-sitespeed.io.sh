#!/bin/bash

BASE_DIR="$(pwd)/$(dirname $0)/.."

$BASE_DIR/node_modules/.bin/sitespeed.io \
    -n 1 \
    --plugins.add $BASE_DIR \
    --browsertime.chrome.collectTracingEvents \
    https://mobile.twitter.com/sitespeedio
