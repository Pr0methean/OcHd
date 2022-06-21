#!/usr/bin/env bash
echo "animate4_ arguments: out file $1, scrap file $2; full args: $*"
./task_scripts/join_job.sh "out_${1}_1"
./task_scripts/join_job.sh "out_${1}_2"
./task_scripts/join_job.sh "out_${1}_3"
./task_scripts/join_job.sh "out_${1}_4"
  echo "Frames ready; creating animated texture $1"
  convert "${OUTDIR}/${1}_1.png" "${OUTDIR}/${1}_2.png" "${OUTDIR}/${1}_3.png" "${OUTDIR}/${1}_4.png" -append "${OUTDIR}/${1}.png"
  mv "${OUTDIR}/${1}_1.png" "$DEBUGDIR"
  mv "${OUTDIR}/${1}_2.png" "$DEBUGDIR"
  mv "${OUTDIR}/${1}_3.png" "$DEBUGDIR"
  mv "${OUTDIR}/${1}_4.png" "$DEBUGDIR"
  mv "${OUTDIR}/$2.png" "$DEBUGDIR"
  echo "Wrote animated texture $1"