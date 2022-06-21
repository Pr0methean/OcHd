#!/usr/bin/env bash
echo "copy_ arguments: old file $1, new file $2; full args: $*"
./task_scripts/join_job.sh "out_$1"
ln -T "$OUTDIR/$1.png" "$OUTDIR/$2.png"
echo "Copied output $1 to output $2"