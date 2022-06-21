
my_layers=($2)
layer_files=()
echo "out_stack_ args: out file $1, layers ${layers[*]}"
for layer in "${my_layers[@]}"; do
  layer_files+=("$TMPDIR/$layer.png")
  echo "Waiting for layer job $layer"
  sem --wait --id "layer_$layer"
done
OUTFILE="${OUTDIR}/$1.png"
if [ ${#my_layers[@]} -eq 1 ]; then
  echo "Copying ${layer_files[0]} to output $1"
  ln -T "${layer_files[0]}" "${OUTFILE}"
else
  echo "Building output $1 from layers: ${layer_files[*]}"
  magick "${layer_files[@]}"  -colorspace sRGB -background none -layers flatten -set colorspace RGBA "${OUTFILE}"
fi
echo "Wrote output file $1"
for layer in "${layer_files[@]}"; do
  mv "$layer" "$DEBUGDIR"
done