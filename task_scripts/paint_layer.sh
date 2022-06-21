#!/usr/bin/env bash
echo "push_ arguments: input $1, fill $2, output $3"
./task_scripts/join_job.sh "convert_$1"
if [ -z ${4+x} ]; then
  magick "$PNG_DIRECTORY/$1.png" -fill "$2" -colorize 100% "$TMPDIR/$3.png"
else
  magick "$PNG_DIRECTORY/$1.png" \
                -fill "$2" -colorize 100% \
                -background "$4" -alpha remove -alpha off "$TMPDIR/$3.png"
fi
echo "Wrote layer $3"