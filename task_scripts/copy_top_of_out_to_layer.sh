#!/usr/bin/env bash
./task_scripts/join_job.sh "out_$1"
echo "STARTING layer_$2"
parallel -m --id memory --fg -j"$MAX_TASKS" convert "$OUTDIR/$1.png" -crop '100%x34.375%' "$TMPDIR/$2.png"
echo "FINISHED layer_$2"
