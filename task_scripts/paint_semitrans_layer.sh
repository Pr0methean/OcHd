#!/usr/bin/env bash
echo "push_semitrans_ arguments: input $1, fill $2, output $3"
./task_scripts/join_job.sh "convert_$1"
if [ -z ${5+x} ]; then
  magick "$PNG_DIRECTORY/$1.png" \
            -fill "$2" -colorize 100% \
            -alpha set -background none -channel A -evaluate multiply "$4" +channel "$TMPDIR/$3.png"
else
  magick "$PNG_DIRECTORY/$1.png" \
                -fill "$2" -colorize 100% \
                -background "$4" -alpha remove \
                -alpha set -background none -channel A -evaluate multiply "$5" +channel "$TMPDIR/$3.png"
fi
echo "Wrote semitransparent layer $3"