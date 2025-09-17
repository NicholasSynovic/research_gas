#!/bin/bash

while read -r url; do
    author=$(basename "$(dirname "$url")")
    repo=$(basename "$url" .git)
    folder="${author}_${repo}"
    git clone "$url" "$folder"
done < repos.txt
