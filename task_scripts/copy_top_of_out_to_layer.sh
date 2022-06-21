#!/usr/bin/env bash
./task_scripts/join_job.sh "out_$1"
echo "STARTING layer_$2"
convert "$OUTDIR/$1.png" -crop '100%x34.375%' "$TMPDIR/$2.png"
echo "FINISHED layer_$2"
