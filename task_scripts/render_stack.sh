#!/usr/bin/env bash
my_layers=($2)
layer_files=()
for layer in "${my_layers[@]}"; do
  layer_files+=("$TMPDIR/$layer.png")
done
for layer in "${my_layers[@]}"; do
  sem --wait --id "layer_$layer"
done
echo "STARTING out_$1"
OUTFILE="${OUTDIR}/$1.png"
if [ ${#my_layers[@]} -eq 1 ]; then
  ln -T "${layer_files[0]}" "${OUTFILE}"
else
  # shellcheck disable=SC2145
  echo "Will run: magick \"${layer_files[@]}\"  -colorspace sRGB -background none -layers flatten -set colorspace RGBA \"${OUTFILE}\""
  parallel -m --id memory --fg --jobs "$MAX_TASKS" magick "${layer_files[@]}"  -colorspace sRGB -background none -layers flatten -set colorspace RGBA "${OUTFILE}"
fi
for layer in "${layer_files[@]}"; do
  mv "$layer" "$DEBUGDIR"
done
echo "FINISHED out_$1"