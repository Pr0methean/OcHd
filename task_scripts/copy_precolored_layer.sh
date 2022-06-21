#!/usr/bin/env bash
./task_scripts/join_job.sh "convert_$1"
echo "STARTING layer_$2"
ln -T "$PNG_DIRECTORY/$1.png" "$TMPDIR/$2.png"
echo "FINISHED layer_$2"