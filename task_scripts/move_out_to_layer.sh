#!/usr/bin/env bash
./task_scripts/join_job.sh "out_$1"
echo "STARTING layer_$2"
mv "$OUTDIR/$1.png" "$TMPDIR/$2.png"
echo "FINISHED layer_$2"