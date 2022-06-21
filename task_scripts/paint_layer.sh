#!/usr/bin/env bash
./task_scripts/join_job.sh "convert_$1"
echo "STARTING layer_$3"
if [ -z ${4+x} ]; then
  echo "Will run: magick \"$PNG_DIRECTORY/$1.png\" -fill \"#$2\" -colorize 100% \"$TMPDIR/$3.png\""
  parallel -m --id memory --fg --jobs "$MAX_TASKS" magick "$PNG_DIRECTORY/$1.png" -fill "#$2" -colorize 100% "$TMPDIR/$3.png"
else
  echo "Will run: magick \"$PNG_DIRECTORY/$1.png\" -fill \"#$2\" -colorize 100% -background \"#$4\" -alpha remove -alpha off \"$TMPDIR/$3.png\""
  parallel -m --id memory --fg --jobs "$MAX_TASKS" magick "$PNG_DIRECTORY/$1.png" -fill "#$2" -colorize 100% -background "#$4" -alpha remove -alpha off "$TMPDIR/$3.png"
fi
echo "FINISHED layer_$3"