#!/usr/bin/env bash
echo "push_precolored_ arguments: input $1, output $2; full args: $*"
./task_scripts/join_job.sh "convert_$1"
ln -T "$PNG_DIRECTORY/$1.png" "$TMPDIR/$2.png"
echo "Wrote precolored layer $2"