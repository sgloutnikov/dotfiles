#!/usr/bin/env bash

# Filename Track
mkvextract tracks "$1".mkv "$2":"$1".en.srt
