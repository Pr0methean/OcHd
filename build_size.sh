#!/bin/bash
WOODS=('ACACIA' 'BIRCH' 'CRIMSON' 'DARK_OAK' 'JUNGLE' 'OAK' 'SPRUCE' 'WARPED')
SIMPLE_ORES=('coal' 'copper' 'iron' 'redstone' 'lapis' 'gold' 'quartz')
ORES=('coal' 'copper' 'iron' 'redstone' 'lapis' 'gold' 'quartz' 'diamond' 'emerald')
GROUND_COVERS=('grass' 'podzol' 'mycelium')

# COLOR CONSTANTS
# H = highlight, S = shadow

# Dye
black='#000000'
red='#b00000'
green='#007c00'
brown='#835400'
blue='#0000aa'
purple='#8900b8'
cyan='#009c9c'
light_gray='#9d9d9d'
gray='#4f4f4f'
pink='#ff9a9a'
lime='#80ff00'
yellow='#ffff00'
light_blue='#7777ff'
magenta='#ff4eff'
orange='#ff8000'
white='#ffffff'

# wood
wood_acacia_h='#c26d3f'
wood_acacia='#ad5d32'
wood_acacia_s='#8f4c2a'
wood_birch_h='#d7cb8d'
wood_birch='#c8b77a'
wood_birch_s='#9e8b61'
wood_crimson_h='#863e5a'
wood_crimson='#6a344b'
wood_crimson_s='#4b2737'
wood_dark_oak_h='#53381a'
wood_dark_oak='#3e2912'
wood_dark_oak_s='#3a2411'
wood_jungle_h='#bf8e6b'
wood_jungle='#9f714a'
wood_jungle_s='#785437'
wood_oak_h='#c29d62'
wood_oak='#af8f55'
wood_oak_s='#7e6237'
wood_spruce_h='#886539'
wood_spruce='#70522e'
wood_spruce_s='#5a4424'
wood_warped_h='#3a8e8c'
wood_warped='#287067'
wood_warped_s='#1e4340'

# earth - overworld
stone_hh='#b5b5b5'
stone_h='#a6a6a6'
stone='#888888'
stone_s='#6d6d6d'
stone_ss='#525252'
sand_h='#edebcb'
sand='#dfd5aa' # compromise between dacfa3 & e3dbb0
sand_s='#d1ba8a'
gravel_h='#aeaeae'
gravel='#7f7f7f'
gravel_s='#5f5f5f'
clay_h='#afb9d6'
clay='#9aa3b3'
clay_s='#9499a4'
dirt_h='#b9855c'
dirt='#966c4a'
dirt_s='#593d29'
# grass is a gray texture modified by a colormap according to the biome.
grass_hh='#c3c3c3'
grass_h='#bababa'
grass='#9d9d9d'
grass_s='#828282'
grass_ss='#757575'
podzol_h='#8b5920'
podzol='#6a4418'
podzol_s='#4a3018'
mycelium_h='#7b6d73'
mycelium='#6a656a'
mycelium_s='#5a5952'
deepslate_h='#797979'
deepslate='#515151'
deepslate_s='#2f2f37'
terracotta='#965d43'
bedrock_h='#979797'
bedrock='#575757'
bedrock_s='#222222'

# mushrooms
mushroom_brown_cap_h='#9c795a'
mushroom_brown_cap='#977251'
mushroom_brown_cap_s='#8d6850'
mushroom_red_cap='#ff0000'
mushroom_stem_h='#d3ccc4'
mushroom_stem='#c7c1b4'
mushroom_stem_s='#c2bcac'

# Ores
gold_h='#ffffb5'
gold='#ffff00'
gold_s='#eb9d00'
iron_h='#e2c0aa'
iron='#d8af93'
iron_s='#af8e77'
redstone_h='#ff5e5e'
redstone='#ff0000'
redstone_s='#ca0000'
copper_h='#ff8268'
copper='#e0734d'
copper_s='#c16746'
coal_h='#494949'
coal='#393939'
coal_s='#252525'
lapis_h='#6995ff'
lapis='#1855bd'
lapis_s='#00009c'
emerald_hh='#d9ffeb'
emerald_h='#1cdd62'
emerald='#1c9829'
emerald_s='#007b18'
diamond_hh='#d5ffff'
diamond_h='#77e7d1'
diamond='#1ed0d6'
diamond_s='#239698'
quartz_h='#ffffff'
quartz='#eae5de'
quartz_s='#b6a48e'

# Water
# Ice is partly transparent unless it's packed/blue ice
ice_h='#cee0ff'
ice='#92b9fe'
ice_s='#70a4fc'

# Lava
lava_h='#faeb72'
lava='#e69836'
lava_s='#cc4108'

# Nether
netherrack_h='#854242'
netherrack='#723232'
netherrack_s='#411616'


layer () {
  sed -e "s/#000000/$2/g" "svg/$1.svg" > "$TMPDIR/recolor.svg"
  if [ -z ${4+x} ]; then
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -y 0.0
  else
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -b $4 -y 1.0
  fi
  rm "$TMPDIR/recolor.svg"
}

stack () {
  NUMFILES=$(ls | wc -l)
  if [ $NUMFILES -eq 1 ]; then
    cp "$TMPDIR"/*.png "$OUTDIR/$1.png"
  else
    magick "$TMPDIR"/*.png -colorspace sRGB -background none -layers flatten -set colorspace RGBA "$OUTDIR/$1.png"
  fi
  mv "$TMPDIR"/*.png "$DEBUGDIR"
}

copy () {
  cp "$OUTDIR/$1.png" "$TMPDIR/$2.png"
}

move () {
  mv "$OUTDIR/$1.png" "$OUTDIR/$2.png"
}

SIZE=$1
declare -i DENSITY=$SIZE*72
TMPDIR="tmp/${SIZE}x${SIZE}"
DEBUGDIR="debug/${SIZE}x${SIZE}"
OUTDIR="out/${SIZE}x${SIZE}"
rm -rf $OUTDIR || true
mkdir -p $OUTDIR
mkdir $OUTDIR/block
mkdir $OUTDIR/item
rm -rf "$TMPDIR" || true
mkdir -p "$TMPDIR"
rm -rf "$DEBUGDIR" || true
mkdir -p "$DEBUGDIR"
cp -r metadata $OUTDIR

layer checksSmall $stone_h cobblestone $stone_s
stack block/cobblestone

layer vees $grass_s grass $grass
stack block/grass_block_top

layer dots2 $dirt_h dirt1 $dirt
layer dots1 $dirt_s dirt2
stack block/dirt

layer topPart $grass grass_side_ol1
layer veesTop $grass_s grass_side_ol2
stack block/grass_block_side_overlay

copy block/dirt grass_side1
copy block/grass_block_side_overlay grass_side2
stack block/grass_block_side

layer checksLarge $stone_h stone $stone_s
stack block/stone

layer strokeBottomLeftTopRight2 $deepslate_h deep1 $deepslate
layer strokeBottomLeftTopRight $deepslate_s deep2
layer borderLongDashes $deepslate_s deep3
stack block/deepslate

layer strokeBottomLeftTopRight2 $netherrack_s nether1 $netherrack
layer strokeTopLeftBottomRight2 $netherrack_h nether2
layer borderDotted $netherrack_s nether3
stack block/netherrack

copy block/stone sb1
layer bricks $stone_ss sb2
stack block/stone_bricks

for ore in ${SIMPLE_ORES[@]}; do
  layer $ore ${!ore} ${ore}_item
  stack "item/${ore}"

  highlight="${ore}_h"
  shadow="${ore}_s"

  layer checksSmall ${!highlight} ${ore}_rawblock1 ${!ore}
  layer $ore ${!shadow} ${ore}_rawblock2
  stack "block/raw_${ore}_block"

  layer ingotMask ${!ore} ${ore}_ingot1
  layer ingotBorder ${!shadow} ${ore}_ingot2
  layer ingotBorderTopLeft ${!highlight} ${ore}_ingot3
  layer $ore ${!shadow} ${ore}_ingot4
  stack "item/${ore}_ingot"
done

layer diamond1 ${diamond_h} diamond1
layer diamond2 ${diamond_s} diamond2
stack item/diamond

layer emeraldTopLeft ${emerald_h} emerald1
layer emeraldBottomRight ${emerald_s} emerald2
stack item/emerald

for ore in ${ORES[@]}; do
  copy block/stone ${ore}1
  copy item/${ore} ${ore}2
  stack "block/${ore}_ore"

  copy block/deepslate deep${ore}1
  copy item/${ore} deep${ore}2
  stack "block/deepslate_${ore}_ore"

  copy block/netherrack nether${ore}1
  copy item/${ore} nether${ore}2
  stack "block/nether_${ore}_ore"

  highlight="${ore}_h"
  shadow="${ore}_s"

  layer checksLarge ${!highlight} ${ore}_block1 ${!ore}
  layer $ore ${!shadow} ${ore}_block2
  layer borderSolidTopLeft ${!highlight} ${ore}_block3
  layer borderSolidBottomRight ${!shadow} ${ore}_block4
  stack "block/${ore}_block"
done

copy block/diamond_block diamond_block1
layer diamond1 ${diamond_hh} diamond_block2
layer diamond2 ${diamond_s} diamond_block3
stack block/diamond_block

copy block/emerald_block emerald_block1
layer emeraldTopLeft ${emerald_hh} emerald_block2
layer emeraldBottomRight ${emerald_s} emerald_block3
stack block/emerald_block

move item/quartz_ingot item/quartz