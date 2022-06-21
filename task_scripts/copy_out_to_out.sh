#!/usr/bin/env bash
./task_scripts/join_job.sh "out_$1"
echo "STARTING out_$2"
ln -T "$OUTDIR/$1.png" "$OUTDIR/$2.png"
echo "FINISHED out_$2"