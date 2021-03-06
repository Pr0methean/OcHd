#!/usr/bin/env bash
./task_scripts/join_job.sh "out_${1}_1"
./task_scripts/join_job.sh "out_${1}_2"
./task_scripts/join_job.sh "out_${1}_3"
./task_scripts/join_job.sh "out_${1}_4"
echo "STARTING out_$1"
parallel -m --id memory --fg --jobs "$MAX_TASKS" convert "${OUTDIR}/${1}_1.png" "${OUTDIR}/${1}_2.png" "${OUTDIR}/${1}_3.png" "${OUTDIR}/${1}_4.png" -append "${OUTDIR}/${1}.png"
mv "${OUTDIR}/${1}_1.png" "$DEBUGDIR"
mv "${OUTDIR}/${1}_2.png" "$DEBUGDIR"
mv "${OUTDIR}/${1}_3.png" "$DEBUGDIR"
mv "${OUTDIR}/${1}_4.png" "$DEBUGDIR"
mv "${OUTDIR}/$2.png" "$DEBUGDIR"
echo "FINISHED out_$1"