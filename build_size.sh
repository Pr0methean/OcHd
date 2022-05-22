#!/bin/bash
WOODS=('acacia' 'birch' 'crimson' 'dark_oak' 'jungle' 'mangrove' 'oak' 'spruce' 'warped')
OVERWORLD_WOODS=('acacia' 'birch' 'dark_oak' 'jungle' 'mangrove' 'oak' 'spruce')
FUNGI=('crimson' 'warped')
SIMPLE_ORES=('coal' 'copper' 'iron' 'redstone' 'gold' 'quartz')
ORES=('coal' 'copper' 'iron' 'redstone' 'lapis' 'gold' 'quartz' 'diamond' 'emerald')
GROUND_COVERS=('grass' 'podzol' 'mycelium')
DYES=('black' 'red' 'green' 'brown' 'blue' 'purple' 'cyan' 'light_gray' 'pink' 'lime' 'yellow' 'light_blue' 'magenta' 'orange' 'white')

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
wood_mangrove_h='#8b4d3a'
wood_mangrove='#773934'
wood_mangrove_s='#5d0000'
wood_oak_h='#c29d62'
wood_oak='#af8f55'
wood_oak_s='#7e6237'
wood_spruce_h='#886539'
wood_spruce='#70522e'
wood_spruce_s='#5a4424'
wood_warped_h='#3a8e8c'
wood_warped='#287067'
wood_warped_s='#1e4340'
bark_acacia_h='#8d8477'
bark_acacia='#696259'
bark_acacia_s='#504b40'
bark_birch_h='#ffffff'
bark_birch='#eeffea'
bark_birch_s='#605e54'
bark_crimson_h='#b10000'
bark_crimson='#4b2737'
bark_crimson_s='#442131'
bark_dark_oak_h='#584428'
bark_dark_oak='#3f3100'
bark_dark_oak_s='#292000'
bark_jungle_h='#7d5d26'
bark_jungle='#503f00'
bark_jungle_s='#3e3000'
bark_mangrove_h='#675230'
bark_mangrove='#5a482c'
bark_mangrove_s='#443522'
bark_oak_h='#987849'
bark_oak='#745a36'
bark_oak_s='#4c3d26'
bark_spruce_h='#553a1f'
bark_spruce='#3b2700'
bark_spruce_s='#2e1c00'
bark_warped_h='#14956f'
bark_warped='#562c3e'
bark_warped_s='#442131'

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
grass_item_h='#9ccb6c'
grass_item='#83b253'
grass_item_ss='#64a43a'
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
mortar='#a2867d'
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
coal='#2f2f2f'
coal_s='#000000'
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

# Misc
tnt_h='#ff4300'
tnt='#db2f00'
tnt_s='#912d00'

# Technical blocks
command_block_h='#d7b49d'
command_block='#c77e4f'
command_block_s='#a66030'
command_block_dot='#c2873e'
structure_block_bg='#675230'
structure_block_fg='#d7c2d7'

layer () {
  sed -e "s/#000000/$2/g" "svg/$1.svg" > "$TMPDIR/recolor.svg"
  if [ -z ${4+x} ]; then
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -y 0.0
  else
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -b $4 -y 1.0
  fi
  rm "$TMPDIR/recolor.svg"
}

semitrans () {
  convert "$TMPDIR/$1.png" -alpha set -background none -channel A -evaluate multiply $2 +channel "$TMPDIR/$1.png"
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
OUTDIR="out/${SIZE}x${SIZE}/assets/minecraft/textures"
rm -rf $OUTDIR || true
mkdir -p $OUTDIR
mkdir $OUTDIR/block
mkdir $OUTDIR/item
rm -rf "$TMPDIR" || true
mkdir -p "$TMPDIR"
rm -rf "$DEBUGDIR" || true
mkdir -p "$DEBUGDIR"
cp -r metadata/*.* $OUTDIR

# S1. SHOVEL BLOCKS

# Soft earth

layer dots2 $dirt_h dirt1 $dirt
layer dots1 $dirt_s dirt2
stack block/dirt

layer checksLarge ${gravel_s} gravel1 ${gravel}
layer checksLargeOutline ${gravel_h} gravel2
stack block/gravel

layer checksSmall ${sand_s} sand1 ${sand}
layer checksSmallOutline ${sand_h} sand2
stack block/sand

layer diagonalChecksTopLeftBottomRight ${clay_s} clay1 ${clay}
layer diagonalChecksBottomLeftTopRight ${clay_h} clay2
layer diagonalOutlineChecksTopLeftBottomRight ${clay_h} clay3
layer diagonalOutlineChecksTopLeftBottomRight ${clay_s} clay4
stack block/clay

# Ground covers

layer vees $grass_s grass $grass
stack block/grass_block_top

layer topPart $grass grass_side_ol1
layer veesTop $grass_s grass_side_ol2
stack block/grass_block_side_overlay

copy block/dirt grass_side1
layer topPart $grass_item grass_side_ol1
layer veesTop $grass_item_s grass_side_ol2
stack block/grass_block_side

layer zigzagBroken ${podzol_s} podzol1 ${podzol}
layer borderDotted ${podzol_h} podzol2
stack block/podzol_top

copy block/dirt podzol_side1
layer topPart $podzol podzol_side2
layer zigzagBrokenTopPart ${podzol_h} podzol3
stack block/podzol_side

layer diagonalChecksTopLeftBottomRight ${mycelium_s} mycelium1 ${mycelium}
layer diagonalChecksBottomLeftTopRight ${mycelium_h} mycelium2
layer diagonalOutlineChecksTopLeftBottomRight ${mycelium_h} mycelium3
layer diagonalOutlineChecksTopLeftBottomRight ${mycelium_s} mycelium4
stack block/mycelium_top

copy block/dirt mycelium_side1
magick "$OUTDIR"/block/mycelium_top -crop 100%x34.375% "$TMPDIR"/mycelium_side2.png
stack block/mycelium_side

# todo: moss, farmland, snow

# S2. PICKAXE BLOCKS

# Rock

layer checksLarge $stone_h stone $stone_s
stack block/stone

layer borderSolid $stone_ss stone2 $stone
stack block/smooth_stone

layer checksLarge $stone_s cobblestone1 $stone_h
layer checksSmall $stone cobblestone2
layer borderSolid $stone_hh cobblestone3
layer borderShortDashes $stone_ss cobblestone6
stack block/cobblestone

layer checksLarge $deepslate_h deepslate1 $deepslate_s
layer checksSmall $deepslate deepslate2
stack block/cobbled_deepslate

layer checksLarge $deepslate deep1 $deepslate_h
layer strokeTopLeftBottomRight $deepslate_s deep2
stack block/deepslate

layer diagonalOutlineChecksTopLeftBottomRight $netherrack_s nether1 $netherrack
layer diagonalOutlineChecksBottomLeftTopRight $netherrack_h nether2
stack block/netherrack

# Bricks

layer checksSmall $stone_h sb1 $stone
layer bricks $stone_ss sb2
layer borderShortDashes $stone_s sb3
stack block/stone_bricks

layer bricks $mortar bricks1 $terracotta
layer borderDotted $mortar bricks2
semitrans bricks2 0.5
stack block/bricks

# Ores

layer diamond1 ${diamond_hh} diamond1
layer diamond2 ${diamond_s} diamond2
stack item/diamond

layer emeraldTopLeft ${emerald_h} emerald1
layer emeraldBottomRight ${emerald_s} emerald2
stack item/emerald

layer lapis ${lapis} lapis1
layer lapisHighlight ${lapis_h} lapis2
layer lapisShadow ${lapis_s} lapis3
stack item/lapis

for ore in ${SIMPLE_ORES[@]}; do
  layer $ore ${!ore} ${ore}_item
  stack "item/${ore}"

  highlight="${ore}_h"
  shadow="${ore}_s"

  layer bigCircle ${!shadow} rawitem1
  layer $ore ${!highlight} rawitem3
  stack "item/raw_${ore}"

  layer checksSmall ${!highlight} ${ore}_rawblock1 ${!ore}
  layer $ore ${!shadow} ${ore}_rawblock2
  stack "block/raw_${ore}_block"

  layer ingotMask ${!ore} ${ore}_ingot1
  layer ingotBorder ${!shadow} ${ore}_ingot2
  layer ingotBorderTopLeft ${!highlight} ${ore}_ingot3
  layer $ore ${!shadow} ${ore}_ingot4
  stack "item/${ore}_ingot"
done

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
done

for ore in ${SIMPLE_ORES[@]}; do
  highlight="${ore}_h"
  shadow="${ore}_s"

  layer streaks ${!highlight} ${ore}_block0 ${!ore}
  layer $ore ${!shadow} ${ore}_block1
  layer borderSolidTopLeft ${!highlight} ${ore}_block3
  layer borderSolidBottomRight ${!shadow} ${ore}_block4
  stack "block/${ore}_block"
done

layer checksLarge ${lapis_s} lapis_block0 ${lapis_h}
layer checksSmall ${lapis} lapis_block1
layer borderSolidTopLeft ${lapis_h} lapis_block3
layer borderSolidBottomRight ${lapis_s} lapis_block4
stack block/lapis_block

layer streaks ${diamond_h} diamond_block1 ${diamond}
layer diamond1 ${diamond_hh} diamond_block2
layer diamond2 ${diamond_s} diamond_block3
layer borderSolid ${diamond_s} diamond_block4
layer borderSolidTopLeft ${diamond_hh} diamond_block5
stack block/diamond_block

layer streaks ${emerald_h} emerald_block1 ${emerald}
layer emeraldTopLeft ${emerald_hh} emerald_block2
layer emeraldBottomRight ${emerald_s} emerald_block3
layer borderSolid ${emerald_s} emerald_block4
layer borderSolidTopLeft ${emerald_h} emerald_block5
stack block/emerald_block

layer streaks ${copper_h} cutcopper10 ${copper}
layer borderSolid ${copper_s} cutcopper11
layer borderSolidTopLeft ${copper_h} cutcopper12
layer cutInQuarters1 ${copper_s} cutcopper20
layer cutInQuarters2 ${copper_h} cutcopper30
stack block/cut_copper

move item/quartz_ingot item/quartz
move block/raw_quartz_block block/quartz_block_top
move block/quartz_block block/quartz_block_bottom

move item/lapis item/lapis_lazuli
move item/raw_redstone item/redstone

copy block/quartz_block_top quartz_side
stack block/quartz_block_side

# Carved ores

layer rings ${quartz_h} quartz1 ${quartz}
layer borderSolid ${quartz_s} quartz2
layer borderDotted ${quartz_h} quartz3
stack block/quartz_pillar_top

layer borderDotted ${quartz_h} qb0 ${quartz}
layer bricks ${quartz_s} qb1
stack block/quartz_bricks

layer tntSticksSide ${quartz} qp1 ${quartz_s}
layer borderSolid ${quartz_s} qp2
layer borderLongDashes ${quartz_h} qp3
stack block/quartz_pillar

# Glass

layer borderSolid $white glass1
layer borderSolidBottomRight $gray glass2
layer streaks $white glass3
stack "block/glass"

for dye in ${DYES[@]}; do
  layer empty ${black} glass1 ${!dye}
  semitrans glass1 0.25
  layer borderSolid ${!dye} glass2
  layer streaks ${!dye} glass3
  stack block/${dye}_stained_glass
done

# Rails

layer railTies $wood_oak rail1
layer rail $stone_h rail2
stack block/rail

layer railCorner $stone_h rail1
stack block/rail_corner

# Functional pickaxe blocks

copy block/smooth_stone furnace1
layer furnaceFront $black furnace2
stack block/furnace_front

copy block/smooth_stone furnace1
layer furnaceFrontLit $black furnace2
stack block/furnace_front_on

# S3. AXE BLOCKS

# Planks

for wood in ${WOODS[@]}; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"

  layer planksTop ${!midtone} planks1 ${!shadow}
  layer borderShortDashes ${!highlight} planks2
  stack "block/${wood}_planks"
done

# Logs, wood & hyphae

for wood in ${OVERWORLD_WOODS[@]}; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  layer borderSolid ${!bark_s} logSide3 ${!bark}
  layer borderDotted ${!bark_h} logSide4
  layer zigzagSolid ${!bark_s} logSide5
  layer zigzagSolid2 ${!bark_h} logSide6
  stack "block/${wood}_log"

  layer borderSolid ${!shadow} strippedLogSide1 ${!midtone}
  layer borderShortDashes ${!highlight} strippedLogSide2
  stack "block/stripped_${wood}_log"

  copy "block/stripped_${wood}_log" strippedLog0
  layer rings ${!shadow} strippedLog1
  stack "block/stripped_${wood}_log_top"

  copy "block/stripped_${wood}_log_top" logTop1
  layer borderSolid ${!bark} logTop2
  layer borderDotted ${!bark_s} logTop3
  stack "block/${wood}_log_top"
done

for wood in ${FUNGI[@]}; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  layer borderSolid ${!bark_s} stemSide1 ${!bark}
  layer waves ${!bark_h} stemSide2
  stack "block/${wood}_stem"

  layer borderSolid ${!shadow} strippedLogSide1 ${!midtone}
  layer borderDotted ${!highlight} strippedLogSide2
  stack "block/stripped_${wood}_stem"

  copy "block/stripped_${wood}_stem" strippedLog0
  layer rings ${!highlight} strippedLog1
  stack "block/stripped_${wood}_stem_top"

  copy "block/stripped_${wood}_stem_top" logTop1
  layer borderSolid ${!bark} logTop2
  layer borderDotted ${!bark_s} logTop3
  stack "block/${wood}_stem_top"
done

# Giant mushrooms

layer mushroomSpots ${white} mush1 $mushroom_red_cap
layer borderRoundDotsVaryingSize ${white} mush2
stack block/red_mushroom_block

# Functional wooden blocks

layer craftingGrid ${wood_oak_s} table1 ${wood_oak}
layer borderSolid ${wood_dark_oak} table2
layer cornersTri ${wood_oak_h} table3
stack "block/crafting_table_top"

layer planksTop ${wood_oak} table_side_1 ${wood_oak_s}
layer borderSolid ${wood_oak_h} table_side_2
layer craftingSide ${wood_dark_oak} table_side_3
stack "block/crafting_table_side"

copy block/crafting_table_side table_front_1
stack "block/crafting_table_front"

layer bookShelves ${black} shelf1 ${wood_oak}
stack "block/bookshelf"

# S4. BLOCKS BROKEN WITH SHEARS

# todo: cobweb, glow moss

# S7. LIQUIDS

# S8. BLOCKS BROKEN WITHOUT TOOLS

# Wool

for dye in ${DYES[@]}; do
  layer empty ${!dye} wool1 ${!dye}
  layer zigzagBroken ${gray} wool2
  semitrans wool2 0.25
  layer zigzagBroken ${light_gray} wool3
  semitrans wool3 0.25
  layer borderSolid ${gray} wool4
  semitrans wool4 0.5
  layer borderDotted ${light_gray} wool5
  semitrans wool5 0.5
  stack block/${dye}_wool
done

# Tnt

layer tntSticksSide ${tnt} tnt10 ${tnt_s}
layer borderDotted ${tnt_h} tnt15
layer tntStripe ${white} tnt20
layer tntSign ${black} tnt30
stack block/tnt_side

layer tntSticksEnd ${red} tnt1 ${black}
stack block/tnt_bottom

copy block/tnt_bottom tnt1
layer tntFuzes ${black} tnt2
stack block/tnt_top

# Mushrooms

layer mushroomStem $mushroom_stem mush1
layer mushroomCapRed $mushroom_red_cap mush2
stack block/red_mushroom

layer mushroomStem $mushroom_stem mush1
layer mushroomCapBrown $mushroom_brown_cap mush2
stack block/brown_mushroom

# S9. UNBREAKABLE BLOCKS

layer borderSolid $bedrock_s bedrock1 $bedrock
layer borderLongDashes $bedrock_h bedrock2
layer strokeTopLeftBottomRight2 $bedrock_s bedrock3
layer strokeBottomLeftTopRight2 $bedrock_h bedrock4
stack block/bedrock