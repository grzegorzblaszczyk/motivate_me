#!/bin/bash

# MIT License
# Copyright (c) 2025 Grzegorz Błaszczyk

FOLDER="${1:-$HOME/inspiring_gfx}"

FIND=`which find`
IMGCAT=`which imgcat`
SHUF=`which shuf`

if [[ ! -x "$IMGCAT" ]]; then
  echo "Error: imgcat not found!"
  echo "Download it from https://iterm2.com/utilities/imgcat"
  exit 1
fi

if [[ ! -d "$FOLDER" ]]; then
  echo "Error: Folder with graphics does not exist: $FOLDER"
  exit 1
fi

RANDOM_IMAGE=$(${FIND} "$FOLDER/" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | ${SHUF} -n1)

if [[ -z "$RANDOM_IMAGE" ]]; then
  echo "No graphic files in $FOLDER !"
  exit 1
fi

echo "Today's motivational GFX:"
"$IMGCAT" "$RANDOM_IMAGE"
