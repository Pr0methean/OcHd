#!/bin/bash
SIZES=("32x32" "64x64" "128x128" "256x256" "512x512" "1024x1024" "2048x2048" "4096x4096")
for SIZE in SIZES; do
  rm -rf "out/$SIZE"
  mkdir -p "out/$SIZE"
done