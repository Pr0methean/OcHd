#!/usr/bin/env bash
echo "rename_out_ arguments: old file $1, new file $2; full args: $*"
./task_scripts/join_job.sh "out_$1"
mv "$OUTDIR/$1.png" "$OUTDIR/$2.png"
echo "Renamed output $1 to output $2"