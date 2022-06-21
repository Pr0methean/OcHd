#!/usr/bin/env bash
echo "push_move_ arguments: old file $1, new file $2; full args: $*"
./task_scripts/join_job.sh "out_$1"
mv "$OUTDIR/$1.png" "$TMPDIR/$2.png"
echo "Moved output $1 to layer $2"