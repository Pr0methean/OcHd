#!/usr/bin/env bash
echo "STARTING convert_$1"
parallel -m --id memory --fg --jobs "$MAX_TASKS" inkscape -w "$SIZE" -h "$SIZE" "$SVG_DIRECTORY/$1.svg" -o "$PNG_DIRECTORY/$1.png" -y 0.0
echo "FINISHED convert_$1"