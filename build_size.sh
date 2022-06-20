#!/bin/bash

set -euo pipefail

# S000. ARRAY CONSTANTS

WOODS=('acacia' 'birch' 'crimson' 'dark_oak' 'jungle' 'mangrove' 'oak' 'spruce' 'warped')
OVERWORLD_WOODS=('acacia' 'birch' 'dark_oak' 'jungle' 'mangrove' 'oak' 'spruce')
FUNGI=('crimson' 'warped')
SIMPLE_ORES=('coal' 'copper' 'iron' 'redstone' 'gold' 'quartz')
ORES=('coal' 'copper' 'iron' 'redstone' 'lapis' 'gold' 'quartz' 'diamond' 'emerald')
DYES=('black' 'red' 'green' 'brown' 'blue' 'purple' 'cyan' 'gray' 'light_gray' 'pink' 'lime' 'yellow' 'light_blue' 'magenta' 'orange' 'white')
CMD_BLOCK_TYPES=('command_block' 'repeating_command_block' 'chain_command_block')
NORMAL_MUSIC_DISCS=('far' 'wait' 'strad' 'mall' 'cat' 'pigstep' 'mellohi' '13' 'blocks' 'stal' 'ward' '5' 'otherside' 'chirp')
DISC_LABELS=('red' 'green' 'brown' 'blue' 'purple' 'cyan' 'light_gray' 'pink' 'lime' 'yellow' 'light_blue' 'magenta' 'orange' 'white')
OXIDATION_STATES=('exposed' 'weathered' 'oxidized')

# S001. COLOR CONSTANTS
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
bark_warped_h='#00956f'
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
red_sand_h='#d97b30'
red_sand='#bf6721'
red_sand_s='#ac5700'
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
grass_item_s='#64a43a'
podzol_h='#8b5920'
podzol='#6a4418'
podzol_s='#4a3018'
mycelium_h='#7b6d73'
mycelium='#6a656a'
mycelium_s='#5a5952'
mud_h='#494949'
mud='#3a3a3a'
mud_s='#333333'
mud_brick_h='#ab8661'
mud_brick='#8c674f'
mud_brick_s='#5e4841'
deepslate_h='#797979'
deepslate='#515151'
deepslate_s='#2f2f37'
terracotta='#965d43'
mortar='#a2867d'
moss_h='#70922d'
moss='#647233'
moss_s='#42552d'
farmland_moist_h='#6e3c15'
farmland_moist='#552e00'
farmland_moist_s='#341900'
farmland_h='#b9855c'
farmland='#966c4a'
farmland_s='#593d29'
andesite_h='#a9a99a'
andesite='#8b8b8b'
andesite_s='#686868'
diorite_h='#ffffff'
diorite='#bfbfbf'
diorite_s='#7b7b7b'
granite_h='#e3c0af'
granite='#9f6b58'
granite_s='#5f4034'
bedrock_h='#979797'
bedrock='#575757'
bedrock_s='#222222'

# plants
sugarcane_h='#91ff32'
sugarcane='#aadb74'
sugarcane_s='#82a859'
flower_stem_h='#55ab2d'
flower_stem='#4a8f28'
flower_stem_s='#266325'
veg_leaves_h='#55ab2d'
veg_leaves='#4a8f28'
veg_leaves_s='#266325'
carrot='#ff8a00'
beetroot='#bf2727'
potato='#d97b30'
wheat_h='#dcbb65'
wheat='#888836'
wheat_s='#5b6b0f'

# mushrooms
mushroom_brown_cap_h='#9c795a'
mushroom_brown_cap='#977251'
mushroom_brown_cap_s='#8d6850'
mushroom_red_cap='#ff0000'
mushroom_stem_h='#d3ccc4'
mushroom_stem='#c7c1b4'
mushroom_stem_s='#c2bcac'
mushroom_inside_h='#d7b680'
mushroom_inside='#c7a877'
mushroom_inside_s='#ab9066'

# nether fungi
crimson_nylium_h='#bd3031'
crimson_nylium='#854242'
crimson_nylium_s='#7b0000'
crimson_wart_h='#ac2020'
crimson_wart='#7b0000'
crimson_wart_s='#5a0000'
warped_nylium_h='#00b485'
warped_nylium='#568353'
warped_nylium_s='#456b52'
warped_wart_h='#00b485'
warped_wart='#008282'
warped_wart_s='#006367'
fungus_spot='#ff6500'
shroomlight_h='#ffffb4'
shroomlight='#ffac6d'
shroomlight_s='#d75100'

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
copper_s='#904931'
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
exposed_copper_h='#ce8d83'
exposed_copper='#a87762'
exposed_copper_s='#796454'
weathered_copper_h='#7ab799'
weathered_copper='#64a077'
weathered_copper_s='#6a7147'
oxidized_copper_h='#6ec59f'
oxidized_copper='#4fab90'
oxidized_copper_s='#3b5c5c'

# Water
# Ice is partly transparent unless it's packed/blue ice
ice_h='#cee0ff'
ice='#92b9fe'
ice_s='#70a4fc'
snow='#ffffff'
snow_s='#cfcfdf'

# Lava
lava_h='#faeb72'
lava='#e69836'
lava_s='#cc4108'

# Nether earth
netherrack_h='#854242'
netherrack='#723232'
netherrack_s='#411616'
soul_soil_h='#6a5244'
soul_soil='#49372c'
soul_soil_s='#352922'
soul_sand_h='#796152'
soul_sand='#5b4538'
soul_sand_s='#352922'
blackstone_h='#4e4b54'
blackstone='#312c36'
blackstone_s='#000000'
basalt_h='#747474'
basalt='#4e4e4e'
basalt_s='#002632'
glowstone_h='#ffffff'
glowstone='#ffda74'
glowstone_s='#cc8654'
glowstone_ss='#6f4522'
nether_brick_h='#442727'
nether_brick='#302020'
nether_brick_s='#000000'
red_nether_brick_h='#730000'
red_nether_brick='#440000'
red_nether_brick_s='#2e0000'

# End
end_stone_h='#ffffb4'
end_stone='#deffa4'
end_stone_s='#c5be8b'

# Misc
tnt_h='#ff4300'
tnt='#db2f00'
tnt_s='#912d00'
bone_block_h='#e9e6d4'
bone_block='#e1ddca'
bone_block_s='#c3bfa1'
target_h='#ffffff'
target_s='#ffd7ba'
redstone_lamp_h='#ffdab4'
redstone_lamp='#e6994a'
redstone_lamp_s='#946931'


# Technical blocks
repeating_command_block_h='#9b8bcf'
repeating_command_block='#6a4fc7'
repeating_command_block_s='#553b9b'
chain_command_block_h='#a1c3b4'
chain_command_block='#76b297'
chain_command_block_s='#5f8f7a'
command_block_h='#d7b49d'
command_block='#c77e4f'
command_block_s='#a66030'
command_block_dot='#c2873e'
structure_block_bg='#26002a'
structure_block_fg='#d7c2d7'

# Items
music_disc_h='#515151'
music_disc='#404040'
music_disc_s='#212121'

# S004. SUBROUTINES
export SHELL=$(type -p bash)
layers=()

join_conversion_job () {
  echo "Waiting for conversion job $1"
  sem --wait --id "convert_$1"
  echo "Done waiting for conversion job $1"
}
export -f join_conversion_job

join_output_job () {
  echo "Waiting for output job $1"
  sem --wait --id "out_$1"
  echo "Done waiting for output job $1"
}
export -f join_output_job

push_ () {
  echo "push_ arguments: $*"
  join_conversion_job "$1"
  if [ -z ${4+x} ]; then
    magick "$PNG_DIRECTORY/$1.png" -fill "$2" -colorize 100% "$TMPDIR/$3.png"
  else
    magick "$PNG_DIRECTORY/$1.png" \
                  -fill "$2" -colorize 100% \
                  -background "$4" -alpha remove -alpha off "$TMPDIR/$3.png"
  fi
  echo "Wrote layer $3"
}
export -f push_

push () {
  args=("$@")
  if [ -z ${4+x} ]; then
    sem --id "layer_$3" push_ "$1" "$2" "$3"
  else
    sem --id "layer_$3" push_ "$1" "$2" "$3" "$4"
  fi
}

out_layer_ () {
  echo "out_layer_ arguments: $*"
  join_conversion_job "$1"
  if [ -z ${4+x} ]; then
    magick "$PNG_DIRECTORY/$1.png" \
              -fill "$2" -colorize 100% \
              "$OUTDIR/$3.png"
  else
    magick "$PNG_DIRECTORY/$1.png" \
                  -fill "$2" -colorize 100% \
                  -background "$4" -alpha remove -alpha off "$OUTDIR/$3.png"
  fi
  echo "Wrote single-layer output file $3"
}
export -f out_layer_

out_layer () {
  if [ -z ${4+x} ]; then
    sem --id "out_$3" out_layer_ "$1" "$2" "$3"
  else
    sem --id "out_$3" out_layer_ "$1" "$2" "$3" "$4"
  fi
}

push_precolored_ () {
  join_conversion_job "$1"
  ln -T "$PNG_DIRECTORY/$1.png" "$TMPDIR/$2.png"
  echo "Wrote precolored layer $2"
}
export -f push_precolored_

push_precolored () {
  sem --id "layer_$2" push_precolored_ "$1" "$2"
  layers+=("$2")
}

push_semitrans_ () {
  echo "push_semitrans_ arguments: $*"
  join_conversion_job "$1"
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
}
export -f push_semitrans_

push_semitrans () {
  if [ -z ${5+x} ]; then
    sem --id "layer_$3" push_semitrans_ "$1" "$2" "$3" "$4"
  else
    sem --id "layer_$3" push_semitrans_ "$1" "$2" "$3" "$4" "$5"
  fi
  layers+=("$3")
}

out_stack_ () {
  layers=("${@:2}")
  layer_files=()
  echo "Starting output job $1 using layers: ${layers[*]}"
  for layer in "${layers[@]}"; do
    layer_files+=("$TMPDIR/$layer.png")
    echo "Waiting for layer job $layer"
    sem --wait --id "layer_$layer"
  done
  OUTFILE="${OUTDIR}/$1.png"
  if [ ${#layers[@]} -eq 1 ]; then
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
}
export -f out_stack_

out_stack () {
  sem --id "out_$1" out_stack_ "$1" "${layers[@]}"
  layers=()
}

push_copy_ () {
  echo "Waiting for output job $1"
  join_output_job "$1"
  echo "Done waiting for output job $1"
  ln -T "$OUTDIR/$1.png" "$TMPDIR/$2.png"
  echo "Copied output $1 to layer $2"
}
export -f push_copy_

push_copy () {
  sem --id "layer_$2" push_copy_ "$1" "$2"
  layers+=("$2")
}

copy_ () {
  join_output_job "$1"
  ln -T "$OUTDIR/$1.png" "$OUTDIR/$2.png"
}
export -f copy_

copy () {
  sem --id "out_$2" copy_ "$1" "$2"
}

rename_out_ () {
  join_output_job "$1"
  mv "$OUTDIR/$1.png" "$OUTDIR/$2.png"
}
export -f rename_out_

rename_out () {
  sem --id "out_$2" rename_out_ "$1" "$2"
}

done_with_out () {
  mv "${OUTDIR}/${1}.png" "${DEBUGDIR}"
}
export -f done_with_out

animate4_ () {
  echo "Waiting for frames of $1"
  join_output_job "${1}_1"
  join_output_job "${1}_2"
  join_output_job "${1}_3"
  join_output_job "${1}_4"
  echo "Frames ready; creating animated texture $1"
  convert "${OUTDIR}/${1}_1.png" "${OUTDIR}/${1}_2.png" "${OUTDIR}/${1}_3.png" "${OUTDIR}/${1}_4.png" -append "${OUTDIR}/${1}.png"
  done_with_out "${1}_1"
  done_with_out "${1}_2"
  done_with_out "${1}_3"
  done_with_out "${1}_4"
  done_with_out "$2"
  echo "Wrote animated texture $1"
}
export -f animate4_

animate4 () {
  sem --id "out_$1" animate4_ "$1" "$2"
}

convert_ () {
  echo "Starting conversion job $1"
  sem --id inkscape --fg -j4% inkscape -w "$SIZE" -h "$SIZE" "$SVG_DIRECTORY/$1.svg" -o "$PNG_DIRECTORY/$1.png" -y 0.0
  echo "Finished conversion job $1"
}
export -f convert_

# S005. DIRECTORY SETUP

export SIZE=$1
export SVG_DIRECTORY="$(pwd)/svg"
export PNG_DIRECTORY="$(pwd)/png/${SIZE}x${SIZE}"
export TMPDIR="$(pwd)/tmp/${SIZE}x${SIZE}"
export DEBUGDIR="$(pwd)/debug/${SIZE}x${SIZE}"
export OUTROOT="$(pwd)/out/${SIZE}x${SIZE}"
export OUTDIR="${OUTROOT}/assets/minecraft/textures"
rm -rf "$OUTDIR" || true
mkdir -p "$OUTDIR"
mkdir "$OUTDIR/block"
mkdir "$OUTDIR/item"
mkdir "$OUTDIR/particle"
rm -rf "$TMPDIR" || true
mkdir -p "$TMPDIR"
rm -rf "$DEBUGDIR" || true
mkdir -p "$DEBUGDIR"
cp -r metadata/*.* "$OUTROOT"
mkdir -p "$PNG_DIRECTORY"

# S006. CONVERT LAYERS TO PNG

echo "Converting layers to PNG..."
cd svg
for file in *.svg; do
  SHORTNAME="${file%.svg}"
  echo "Scheduling conversion job for ${SHORTNAME}"
  sem --id "convert_$SHORTNAME" convert_ "$SHORTNAME"
done
cd ..

# S009. ITEMS USED IN MULTIPLE CATEGORIES OF BLOCKS

# Bones and bone meal

push_precolored bonemealSmall bonemeal1
out_stack item/bone_meal

out_layer boneBottomLeftTopRight $bone_block_h item/bone

# S010. SHOVEL BLOCKS

# Soft earth

push dots3 $dirt_s dirt1 $dirt
push dots2 $dirt_h dirt2
out_stack block/dirt

push checksLarge ${gravel_s} gravel1 ${gravel}
push checksLargeOutline ${gravel_h} gravel2
out_stack block/gravel

push checksSmall ${sand_s} sand1 ${sand}
push checksSmallOutline ${sand_h} sand2
out_stack block/sand

push checksSmall ${red_sand_h} rsand1 ${red_sand}
push checksSmallOutline ${red_sand_s} rsand2
out_stack block/red_sand

push diagonalChecksTopLeftBottomRight ${clay_s} clay1 ${clay}
push diagonalChecksBottomLeftTopRight ${clay_h} clay2
push diagonalOutlineChecksTopLeftBottomRight ${clay_h} clay3
push diagonalOutlineChecksBottomLeftTopRight ${clay_s} clay4
out_stack block/clay

# Nether

push borderSolid ${soul_sand_s} ssand1 ${soul_sand}
push checksSmall ${soul_sand_h} ssand2
push soulHeads ${soul_sand_s} ssand3
push soulTopLeftFace ${soul_sand_h} ssand4
push soulBottomRightFace ${soul_sand_h} ssand5
out_stack block/soul_sand

push borderSolid ${soul_soil} ssoil0 ${soul_soil_s}
push strokeBottomLeftTopRight4 ${soul_soil_h} ssoil1
push soulHeads ${soul_soil} ssoil3
push soulTopLeftFace ${soul_soil_h} ssoil4
push soulBottomRightFace ${soul_soil_s} ssoil5
out_stack block/soul_soil

# Ground covers

out_layer vees $grass_s block/grass_block_top $grass_h

push topPart $grass_h grass_side_ol1
push veesTop $grass_s grass_side_ol2
out_stack block/grass_block_side_overlay

push_copy block/dirt grass_side_1
push topPart $grass_item_h grass_side_2
push veesTop $grass_item_s grass_side_3
out_stack block/grass_block_side

push zigzagBroken ${podzol_h} podzol1 ${podzol}
push borderDotted ${podzol_s} podzol2
out_stack block/podzol_top

push_copy block/dirt podzol_side1
push topPart $podzol podzol_side2
push zigzagBrokenTopPart ${podzol_h} podzol_side3
out_stack block/podzol_side

push diagonalChecksTopLeftBottomRight ${mycelium_s} mycelium1 ${mycelium}
push diagonalChecksBottomLeftTopRight ${mycelium_h} mycelium2
push diagonalOutlineChecksTopLeftBottomRight ${mycelium_h} mycelium3
push diagonalOutlineChecksBottomLeftTopRight ${mycelium_s} mycelium4
out_stack block/mycelium_top

{
  join_output_job block/mycelium_top
  push_copy block/dirt mycelium_side1
  magick "${OUTDIR}/block/mycelium_top.png" -crop '100%x34.375%' "${TMPDIR}/mycelium_side2.png"
  # FIXME: Find a way to not output these
  rm "${TMPDIR}/mycelium_side2-1.png"
  rm "${TMPDIR}/mycelium_side2-2.png"
  out_stack block/mycelium_side
} &

push strokeTopLeftBottomRight4 ${moss_h} moss1 ${moss}
push strokeBottomLeftTopRight4 ${moss_s} moss2
push borderSolid ${moss_h} moss3
push borderShortDashes ${moss_s} moss4
out_stack block/moss_block

push strokeTopLeftBottomRight2 ${mud_h} mud1 ${mud}
push strokeBottomLeftTopRight2 ${mud_s} mud2
push borderSolid ${mud_h} mud3
push borderDotted ${mud_s} mud4
out_stack block/mud

push strokeTopLeftBottomRight2 ${mud_brick_h} mb1 ${mud_brick}
push strokeBottomLeftTopRight2 ${mud_brick_s} mb2
push borderDotted ${mud_h} mb4
out_stack block/packed_mud

out_layer snow ${snow_s} block/snow ${snow}

push_copy block/dirt snow_side_1
push topPart ${snow} snow_side_2
push snowTopPart ${snow_s} snow_side_3
out_stack block/grass_block_snow

# Concrete powder

for dye in "${DYES[@]}"; do
  push empty "${!dye}" "${dye}_conc1" "${!dye}"
  push_semitrans checksSmall ${gray} "${dye}_conc2" 0.25
  push_semitrans checksSmall ${light_gray} "${dye}_conc3" 0.25
  out_stack "block/${dye}_concrete_powder"
done

push bambooThick ${farmland} farmland1 ${farmland_h}
push bambooThinMinusBorder ${farmland_s} farmland2
out_stack "block/farmland"

push bambooThick ${farmland_moist} mfarmland1 ${farmland_moist_h}
push bambooThinMinusBorder ${farmland_moist_s} mfarmland2
push dots0 ${stone_s} mfarmland3
out_stack "block/farmland_moist"

# S020. PICKAXE BLOCKS

# Rock - Overworld

out_layer checksLarge $stone_h block/stone $stone_s

out_layer borderSolid $stone_ss block/smooth_stone $stone

push checksLarge $stone_s cobblestone1 $stone_h
push checksSmall $stone cobblestone2
push borderSolid $stone_hh cobblestone3
push borderShortDashes $stone_ss cobblestone6
out_stack block/cobblestone

push_copy block/cobblestone mcs1
push dots3 ${moss_h} mcs4
push dots2 ${moss_s} mcs5
push dots1 ${moss} mcs6
push borderSolid ${moss_h} mcs10
push borderShortDashes ${moss_s} mcs11
out_stack block/mossy_cobblestone

push checksLarge $deepslate_h deepslate1 $deepslate_s
push checksSmall $deepslate deepslate2
out_stack block/cobbled_deepslate

push diagonalChecksBottomLeftTopRight $deepslate_h deep1 $deepslate
push diagonalChecksTopLeftBottomRight $deepslate_s deep2
out_stack block/deepslate

push_copy block/deepslate deeptop0
push borderSolid ${deepslate_s} deeptop11
push borderDotted ${deepslate_h} deeptop12
out_stack block/deepslate_top

push checksLarge ${sand_s} sandstone1 ${sand}
push borderLongDashes ${sand_h} sandstone2
out_stack block/sandstone_bottom

push_copy block/sandstone_bottom sandstonetop1
push borderSolidThick ${sand_s} sandstonetop2
push borderSolid ${sand_h} sandstonetop3
out_stack block/sandstone_top

push topPart ${sand_s} sandstoneside1 ${sand}
push borderSolid ${sand_s} sandstoneside2
push topStripeThick ${sand_h} sandstoneside3
push borderShortDashes ${sand_h} sandstoneside4
out_stack block/sandstone

push checksLarge ${sand_h} csandstone1 ${sand}
push borderSolid ${sand_s} csandstone2
push borderSolidTopLeft ${sand_h} csandstone3
out_stack block/cut_sandstone

push_copy block/cut_sandstone chsandstone1
push creeperFaceSmall ${sand_s} chsandstone4
out_stack block/chiseled_sandstone

push checksLarge ${red_sand_h} rsandstone1 ${red_sand}
push borderLongDashes ${red_sand_s} rsandstone2
out_stack block/red_sandstone_bottom

push_copy block/red_sandstone_bottom rsandstonetop1
push borderSolidThick ${red_sand_h} rsandstonetop2
push borderSolid ${red_sand_s} rsandstonetop3
out_stack block/red_sandstone_top

push topPart ${red_sand_s} rsandstoneside1 ${red_sand}
push borderSolid ${red_sand_h} rsandstoneside2
push topStripeThick ${red_sand_h} rsandstoneside3
push borderShortDashes ${red_sand_s} rsandstoneside4
out_stack block/red_sandstone

push checksLarge ${red_sand_h} rcsandstone1 ${red_sand}
push borderSolid ${red_sand_s} rcsandstone2
push borderSolidTopLeft ${red_sand_h} rcsandstone3
out_stack block/cut_red_sandstone

push_copy block/cut_red_sandstone chrsandstone1
push witherSymbol ${red_sand_s} chrsandstone2
out_stack block/chiseled_red_sandstone

push bigRingsBottomLeftTopRight ${andesite_h} a1 ${andesite}
push bigRingsTopLeftBottomRight ${andesite_s} a2
out_stack block/andesite

push_copy block/andesite ap1
push borderSolidBottomRight ${andesite_s} ap2
push borderSolidTopLeft ${andesite_h} ap3
out_stack block/polished_andesite

push bigRingsBottomLeftTopRight ${diorite_s} d1 ${diorite}
push bigRingsTopLeftBottomRight ${diorite_h} d2
out_stack block/diorite

push_copy block/diorite dp1
push borderSolidBottomRight ${diorite_s} dp2
push borderSolidTopLeft ${diorite_h} dp3
out_stack block/polished_diorite

push bigDotsBottomLeftTopRight ${granite_s} g11 ${granite}
push bigDotsTopLeftBottomRight ${granite_h} g12
push bigRingsBottomLeftTopRight ${granite_h} g21
push bigRingsTopLeftBottomRight ${granite_s} g22
out_stack block/granite

push_copy block/granite gp1
push borderSolidBottomRight ${granite_s} gp2
push borderSolidTopLeft ${granite_h} gp3
out_stack block/polished_granite

# Rock - Nether

push diagonalOutlineChecksTopLeftBottomRight $netherrack_s nether1 $netherrack
push diagonalOutlineChecksBottomLeftTopRight $netherrack_h nether2
out_stack block/netherrack

push strokeTopLeftBottomRight2 ${warped_nylium_h} wnylium1 ${warped_nylium}
push strokeBottomLeftTopRight2 ${warped_nylium_s} wnylium2
push borderShortDashes ${warped_nylium_s} wnylium3
out_stack block/warped_nylium

push_copy block/netherrack wnyliums1
push topPart ${warped_nylium} wnyliums2
push strokeTopLeftBottomRight2TopPart ${warped_nylium_h} wnyliums3
push strokeBottomLeftTopRight2TopPart ${warped_nylium_s} wnyliums4
out_stack block/warped_nylium_side

push strokeTopLeftBottomRight2 ${crimson_nylium_s} cnylium1 ${crimson_nylium}
push strokeBottomLeftTopRight2 ${crimson_nylium_h} cnylium2
push borderLongDashes ${crimson_nylium_h} cnylium3
out_stack block/crimson_nylium

push_copy block/netherrack cnyliums1
push topPart ${crimson_nylium} cnyliums2
push strokeTopLeftBottomRight2TopPart ${crimson_nylium_s} cnyliums3
push strokeBottomLeftTopRight2TopPart ${crimson_nylium_h} cnyliums4
out_stack block/crimson_nylium_side

push bigDotsBottomLeftTopRight ${blackstone_h} bss1 ${blackstone_s}
push bigDotsTopLeftBottomRight ${blackstone_h} bss2
out_stack block/blackstone

push bigRingsBottomLeftTopRight ${blackstone_h} bst1 ${blackstone}
push bigRingsTopLeftBottomRight ${blackstone_s} bst2
out_stack block/blackstone_top

push_copy block/blackstone gbs0
push bigRingsBottomLeftTopRight ${gold} gbs1
out_stack block/gilded_blackstone

push_copy block/blackstone pbs1
push borderSolidBottomRight ${blackstone_s} pbs2
push borderSolidTopLeft ${blackstone_h} pbs3
out_stack block/polished_blackstone

push bigRingsBottomLeftTopRight ${basalt_h} bas1 ${basalt}
push bigRingsTopLeftBottomRight ${basalt_s} bas2
push borderSolid ${basalt_s} bas3
push borderLongDashes ${basalt_h} bas4
out_stack block/basalt_top

push stripesVerticalThick ${basalt} bass1 ${basalt_s}
push borderLongDashes ${basalt_h} bass2
out_stack block/basalt_side

push stripesVerticalThick ${basalt_h} basps1 ${basalt}
push borderSolidBottomRight ${basalt_s} basps2
push borderSolidTopLeft ${basalt_h} basps3
out_stack block/polished_basalt_side

push ringsCentralBullseye ${basalt_s} baspt11 ${basalt}
push rings ${basalt_h} baspt12
push cutInQuarters1 ${basalt_s} baspt20 ${basalt}
push cutInQuarters2 ${basalt_h} baspt21
push borderSolidBottomRight ${basalt_s} baspt30
push borderSolidTopLeft ${basalt_h} baspt31
out_stack block/polished_basalt_top

push borderSolid ${glowstone_ss} gs0 ${glowstone_s}
push checksSmall ${glowstone} gs1
push lampOn ${glowstone_h} gs2
out_stack block/glowstone

# Rock - End

push checksLargeOutline ${end_stone_s} endstone1 ${end_stone}
push bigDotsTopLeftBottomRight ${end_stone_h} endstone2
out_stack block/end_stone

# Ores

push diamond1 ${diamond_hh} diamond1
push diamond2 ${diamond_s} diamond2
out_stack item/diamond

push emeraldTopLeft ${emerald_h} emerald1
push emeraldBottomRight ${emerald_s} emerald2
out_stack item/emerald

push lapis ${lapis} lapis1
push lapisHighlight ${lapis_h} lapis2
push lapisShadow ${lapis_s} lapis3
out_stack item/lapis

for ore in "${SIMPLE_ORES[@]}"; do
  push "$ore" "${!ore}" "${ore}_item"
  out_stack "item/${ore}"

  highlight="${ore}_h"
  shadow="${ore}_s"

  push bigCircle "${!shadow}" "${ore}_rawitem1"
  push "$ore" "${!highlight}" "${ore}_rawitem3"
  out_stack "item/raw_${ore}"

  push checksSmall "${!highlight}" "${ore}_rawblock1" "${!ore}"
  push "$ore" "${!shadow}" "${ore}_rawblock2"
  out_stack "block/raw_${ore}_block"

  push ingotMask "${!ore}" "${ore}_ingot1"
  push ingotBorder "${!shadow}" "${ore}_ingot2"
  push ingotBorderTopLeft "${!highlight}" "${ore}_ingot3"
  push "$ore" "${!shadow}" "${ore}_ingot4"
  out_stack "item/${ore}_ingot"
done

for ore in "${ORES[@]}"; do
  push_copy block/stone "${ore}1"
  push_copy "item/${ore}" "${ore}2"
  out_stack "block/${ore}_ore"

  push_copy block/deepslate "deep${ore}1"
  push_copy "item/${ore}" "deep${ore}2"
  out_stack "block/deepslate_${ore}_ore"

  push_copy block/netherrack "nether${ore}1"
  push_copy "item/${ore}" "nether${ore}2"
  out_stack "block/nether_${ore}_ore"
done

for ore in "${SIMPLE_ORES[@]}"; do
  highlight="${ore}_h"
  shadow="${ore}_s"

  push streaks "${!highlight}" "${ore}_block0" "${!ore}"
  push "$ore" "${!shadow}" "${ore}_block1"
  push borderSolidTopLeft "${!highlight}" "${ore}_block3"
  push borderSolidBottomRight "${!shadow}" "${ore}_block4"
  out_stack "block/${ore}_block"
done

push checksLarge ${lapis_s} lapis_block0 ${lapis_h}
push checksSmall ${lapis} lapis_block1
push borderSolidTopLeft ${lapis_h} lapis_block3
push borderSolidBottomRight ${lapis_s} lapis_block4
out_stack block/lapis_block

push streaks ${diamond_h} diamond_block1 ${diamond}
push diamond1 ${diamond_hh} diamond_block2
push diamond2 ${diamond_s} diamond_block3
push borderSolid ${diamond_s} diamond_block4
push borderSolidTopLeft ${diamond_hh} diamond_block5
out_stack block/diamond_block

push streaks ${emerald_hh} emerald_block1 ${emerald_h}
push emeraldTopLeft ${emerald_hh} emerald_block2
push emeraldBottomRight ${emerald_s} emerald_block3
push borderSolid ${emerald} emerald_block4
push borderSolidTopLeft ${emerald_h} emerald_block5
out_stack block/emerald_block

rename_out item/quartz_ingot item/quartz
rename_out block/raw_quartz_block block/quartz_block_bottom
rename_out block/quartz_block block/quartz_block_side

rename_out item/lapis item/lapis_lazuli
rename_out item/raw_redstone item/redstone

push streaks ${quartz_h} quartz_top0 ${quartz}
push borderSolidTopLeft ${quartz_h} quartz_top1
push borderSolidBottomRight ${quartz_s} quartz_top2
out_stack block/quartz_block_top

# Carved and/or oxidized ores

push streaks ${copper_h} cutcopper10 ${copper}
push borderSolid ${copper_s} cutcopper11
push borderSolidTopLeft ${copper_h} cutcopper12
push cutInQuarters1 ${copper_s} cutcopper20
push cutInQuarters2 ${copper_h} cutcopper30
out_stack block/cut_copper

for oxidation_state in "${OXIDATION_STATES[@]}"; do
  color="${oxidation_state}_copper"
  shadow="${oxidation_state}_copper_s"
  highlight="${oxidation_state}_copper_h"

  push streaks "${!highlight}" "${oxidation_state}_copper_block0" "${!color}"
  push borderSolidTopLeft "${!highlight}" "${oxidation_state}_copper_block2"
  push borderSolidBottomRight "${!shadow}" "${oxidation_state}_copper_block3"
  push copper2oxide "${!shadow}" "${oxidation_state}_copper_block4"
  out_stack "block/${oxidation_state}_copper"

  push streaks "${!highlight}" "${oxidation_state}_cutcopper10" "${!color}"
  push borderSolid "${!shadow}" "${oxidation_state}_cutcopper11"
  push borderSolidTopLeft "${!highlight}" "${oxidation_state}_cutcopper12"
  push cutInQuarters1 "${!shadow}" "${oxidation_state}_cutcopper20"
  push cutInQuarters2 "${!highlight}" "${oxidation_state}_cutcopper30"
  out_stack "block/cut_${oxidation_state}_copper"
done

push rings ${quartz_h} quartz1 ${quartz}
push borderSolid ${quartz_s} quartz2
push borderDotted ${quartz_h} quartz3
out_stack block/quartz_pillar_top

push tntSticksSide ${quartz} qp1 ${quartz_s}
push borderSolid ${quartz_s} qp2
push borderLongDashes ${quartz_h} qp3
out_stack block/quartz_pillar

# Bricks

push strokeTopLeftBottomRight2 ${mud_brick_h} mb1 ${mud_brick}
push strokeBottomLeftTopRight2 ${mud_brick_s} mb2
push bricks ${mud_s} mb3
push borderDotted ${mud_h} mb4
out_stack block/mud_bricks

push checksLarge $stone_h sb1 $stone
push bricks $stone_ss sb2
push borderShortDashes $stone_s sb3
out_stack block/stone_bricks

push checksLarge $stone_h crsb1 $stone
push bricks $stone_ss crsb2
push streaks $stone_ss crsb3
push borderShortDashes $stone_s crsb5
out_stack block/cracked_stone_bricks

push_copy block/stone_bricks msb1
push dots3 ${moss_s} msb2
push dots2 ${moss_h} msb3
push dots1 ${moss} msb4
push borderSolid ${moss_h} msb5
push borderShortDashes ${moss_s} msb6
out_stack block/mossy_stone_bricks

push_copy block/stone csb1
push ringsCentralBullseye ${stone_hh} csb2
push rings ${stone_ss} csb3
push borderSolid ${stone_ss} csb10
push borderSolidTopLeft ${stone_hh} csb11
out_stack block/chiseled_stone_bricks

push bricksSmall $mortar bricks1 $terracotta
push_semitrans borderDotted $mortar bricks2 0.5
out_stack block/bricks

push streaks ${quartz_h} qb0 ${quartz}
push bricks ${quartz_s} qb1
push borderDotted ${quartz_h} qb2
out_stack block/quartz_bricks

push bricksSmall ${blackstone_s} pbs1 ${blackstone}
push borderDotted ${blackstone_h} pbs3
out_stack block/polished_blackstone_bricks

push_copy block/deepslate db0
push bricksSmall ${deepslate_s} db1
push borderDotted ${deepslate_h} db2
push borderDottedBottomRight ${deepslate_s} db3
out_stack block/deepslate_bricks

push_copy block/end_stone esb0
push bricksSmall ${end_stone_s} esb1
push borderShortDashes ${end_stone_h} esb2
out_stack block/end_stone_bricks

push bricksSmall ${nether_brick_h} nb1 ${nether_brick}
push borderDotted ${nether_brick_h} nb2
push borderDottedBottomRight ${deepslate_s} db3
out_stack block/nether_bricks

push bricksSmall ${red_nether_brick_s} rnb1 ${red_nether_brick}
push borderDotted ${red_nether_brick_h} rnb2
push borderDottedBottomRight ${red_nether_brick_s} rnb3
out_stack block/red_nether_bricks

# Glass

push borderSolid $white glass1
push borderSolidBottomRight $gray glass2
push streaks $white glass3
out_stack "block/glass"

push_semitrans borderSolid $white tglass1 0.5
push_semitrans streaks $white tglass3 0.25
out_stack "block/tinted_glass"

for dye in "${DYES[@]}"; do
  push_semitrans empty ${black} "${dye}_glass1" "${!dye}" 0.25
  push borderSolid "${!dye}" "${dye}_glass2"
  push streaks "${!dye}" "${dye}_glass3"
  out_stack "block/${dye}_stained_glass"

  out_layer paneTop "${!dye}" "block/${dye}_stained_glass_pane_top"
done

copy "block/white_stained_glass_pane_top" "block/glass_pane_top"

# Concrete

for dye in "${DYES[@]}"; do
  push empty "${!dye}" "${dye}_conc1" "${!dye}"
  push_semitrans x ${gray} "${dye}_conc2" 0.25
  push_semitrans borderLongDashes ${light_gray} "${dye}_conc3" 0.25
  out_stack "block/${dye}_concrete"
done

# Bone block

push borderSolid $bone_block_h boneblock1 $bone_block_s
push_semitrans bonesXor ${bone_block_h} boneblock2 0.5
out_stack block/bone_block_top

push borderSolid $bone_block_s boneblockside1 $bone_block
push borderDotted $bone_block_h boneblockside2
push boneBottomLeftTopRight $bone_block_s boneblockside3
push boneTopLeftBottomRight $bone_block_h boneblockside4
out_stack block/bone_block_side

# Rails

push railTies $wood_oak rail1
push rail $stone_h rail2
out_stack block/rail

push railTies $wood_oak_s rail1
push thirdRail $black rail2
push rail $gold rail3
out_stack block/powered_rail

push railTies $wood_oak_s rail1
push thirdRail $redstone_h rail2
push rail $gold rail3
out_stack block/powered_rail_on

push railTies $wood_oak_s arail0
push rail $stone_h arail1
push thirdRail $black arail2
out_stack block/activator_rail

push railTies $wood_oak_s aarail0
push rail $stone_h aarail1
push thirdRail $redstone_h aarail2
out_stack block/activator_rail_on

push railTies $wood_oak_s drail0
push rail $stone_h drail1
push railDetectorPlate $black drail2
out_stack block/detector_rail

push railTies $wood_oak_s adrail0
push rail $stone_h adrail1
push railDetectorPlate $redstone_h adrail2
out_stack block/detector_rail_on

push railTieCorner $wood_oak railc0
push railCorner $stone_h railc1
out_stack block/rail_corner

# Redstone components

push_copy block/smooth_stone repeater1
push repeaterSideInputs ${stone_s} repeater2
push repeater ${black} repeater3
out_stack block/repeater

push_copy block/smooth_stone repeatero1
push repeaterSideInputs ${stone_s} repeatero2
push repeater ${redstone_h} repeatero3
out_stack block/repeater_on

push_copy block/smooth_stone comparator1
push repeaterSideInputs ${stone_s} comparator2
push comparator ${black} comparator3
out_stack block/comparator

push_copy block/smooth_stone comparatoro1
push repeaterSideInputs ${stone_s} comparatoro2
push comparator ${redstone_h} comparatoro3
out_stack block/comparator_on

push bigDiamond ${redstone_s} rloff0 ${redstone}
push lamp ${redstone_h} rloff2
push borderSolidBottomRight ${redstone_s} rloff4
push borderSolidTopLeft ${redstone_h} rloff6
out_stack block/redstone_lamp

push bigDiamond ${redstone_lamp_s} rl0 ${redstone_lamp}
push lampOn ${redstone_lamp_h} rl1
push borderSolidBottomRight ${redstone_lamp_s} rl2
push borderSolidTopLeft ${redstone_lamp_h} rl3
out_stack block/redstone_lamp_on

# Job-site and misc pickaxe blocks

push bottomHalf $stone_h furnaceside1 $stone
push borderSolid $stone_ss furnaceside2
out_stack block/furnace_side

push_copy block/furnace_side furnace1
push furnaceFront $black furnace2
out_stack block/furnace_front

push_copy block/furnace_side furnacel1
push_precolored furnaceFrontLit furnacel2
out_stack block/furnace_front_on

# S030. AXE BLOCKS

# Planks

for wood in "${WOODS[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"

  push waves "${!highlight}" "${wood}_planks0" "${!midtone}"
  push planksTopBorder "${!shadow}" "${wood}_planks1"
  push borderShortDashes "${!highlight}" "${wood}_planks2"
  out_stack "block/${wood}_planks"
done

# Logs, wood & hyphae

for wood in "${OVERWORLD_WOODS[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  push borderSolid "${!bark_s}" "${wood}_logSide3" "${!bark}"
  push borderDotted "${!bark_h}" "${wood}_logSide4"
  push zigzagSolid "${!bark_s}" "${wood}_logSide5"
  push zigzagSolid2 "${!bark_h}" "${wood}_logSide6"
  out_stack "block/${wood}_log"

  push borderSolid "${!shadow}" "${wood}_strippedLogSide1" "${!midtone}"
  push borderShortDashes "${!highlight}" "${wood}_strippedLogSide2"
  out_stack "block/stripped_${wood}_log"

  push_copy "block/stripped_${wood}_log" "${wood}_strippedLog0"
  push ringsCentralBullseye "${!highlight}" "${wood}_strippedLog1"
  push rings "${!shadow}" "${wood}_strippedLog2"
  out_stack "block/stripped_${wood}_log_top"

  push_copy "block/stripped_${wood}_log_top" "${wood}_logTop1"
  push borderSolid "${!bark}" "${wood}_logTop2"
  push borderDotted "${!bark_s}" "${wood}_logTop3"
  out_stack "block/${wood}_log_top"
done

for wood in "${FUNGI[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  push borderSolid "${!bark_s}" "${wood}_stemSide1" "${!bark}"
  push waves "${!bark_h}" "${wood}_stemSide2"
  out_stack "block/${wood}_stem"

  push borderSolid "${!shadow}" "${wood}_strippedLogSide1" "${!midtone}"
  push borderDotted "${!highlight}" "${wood}_strippedLogSide2"
  out_stack "block/stripped_${wood}_stem"

  push_copy "block/stripped_${wood}_stem" "${wood}_strippedLog0"
  push ringsCentralBullseye "${!shadow}" "${wood}_strippedLog1"
  push rings "${!highlight}" "${wood}_strippedLog2"
  out_stack "block/stripped_${wood}_stem_top"

  push_copy "block/stripped_${wood}_stem_top" "${wood}_logTop1"
  push borderSolid "${!bark}" "${wood}_logTop2"
  push borderDotted "${!bark_s}" "${wood}_logTop3"
  out_stack "block/${wood}_stem_top"
done

# Giant mushrooms

push mushroomSpots ${white} rmush1 $mushroom_red_cap
push borderRoundDots ${white} rmush2
out_stack block/red_mushroom_block

out_layer rings ${mushroom_brown_cap_h} block/brown_mushroom_block ${mushroom_brown_cap_s}

push borderRoundDotsVaryingSize ${mushroom_inside_s} mushin1 ${mushroom_inside}
push dots0 ${mushroom_inside_s} mushin2
out_stack block/mushroom_block_inside

push stripesThick ${mushroom_stem_s} mushstem1 ${mushroom_stem_h}
push borderShortDashes ${mushroom_stem} mushstem2
out_stack block/mushroom_stem

# Wooden trapdoors

push waves ${wood_warped} trapdoorw1
push borderSolidThick ${wood_warped} trapdoorw2
push borderSolid ${wood_warped_h} trapdoorw3
push borderShortDashes ${wood_warped_s} trapdoorw4
push trapdoorHingesBig ${stone_s} trapdoorw5
push trapdoorHinges ${stone_h} trapdoorw6
out_stack "block/warped_trapdoor"

push zigzagSolid2 ${wood_crimson_h} trapdoorc0
push zigzagSolid ${wood_crimson_s} trapdoorc1
push borderSolidThick ${wood_crimson} trapdoorc2
push borderSolid ${wood_crimson_s} trapdoorc3
push borderShortDashes ${wood_crimson_h} trapdoorc4
push trapdoorHingesBig ${stone_h} trapdoorc5
push trapdoorHinges ${stone_s} trapdoorc6
out_stack "block/crimson_trapdoor"

push cross ${wood_oak} trapdooro1
push borderSolidThick ${wood_oak} trapdooro2
push borderSolid ${wood_oak_s} trapdooro3
push borderLongDashes ${wood_oak_h} trapdooro4
push trapdoorHingesBig ${stone} trapdooro5
push trapdoorHinges ${stone_h} trapdooro6
out_stack "block/oak_trapdoor"

push planksTopVertical ${wood_spruce} trapdoors1 ${wood_spruce_s}
push borderSolidThick ${wood_spruce_s} trapdoors2
push borderLongDashes ${wood_spruce_h} trapdoors3
push trapdoorHingesBig ${stone} trapdoors5
push trapdoorHinges ${stone_s} trapdoors6
out_stack "block/spruce_trapdoor"

push trapdoor1 ${wood_birch} trapdoorb1
push borderSolid ${wood_birch_s} trapdoorb2
push trapdoorHingesBig ${stone_s} trapdoorb3
out_stack "block/birch_trapdoor"

push trapdoor2 ${wood_jungle} trapdoorj1
push borderSolid ${wood_jungle_s} trapdoorj2
push borderShortDashes ${wood_jungle_h} trapdoorj3
push trapdoorHingesBig ${stone_s} trapdoorj5
push trapdoorHinges ${stone} trapdoorj6
out_stack "block/jungle_trapdoor"

push ringsHole ${wood_mangrove} trapdoorm0
push rings2 ${wood_mangrove_s} trapdoorm2
push borderDotted ${wood_mangrove_h} trapdoorm3
push trapdoorHingesBig ${stone_h} trapdoorm5
push trapdoorHinges ${stone_s} trapdoorm6
out_stack "block/mangrove_trapdoor"

push bigDiamond ${wood_acacia} trapdoora0
push borderSolidThick ${wood_acacia} trapdoora1
push borderSolid ${wood_acacia_h} trapdoora2
push trapdoorHingesBig ${stone_s} trapdoora5
push trapdoorHinges ${stone_h} trapdoora6
out_stack "block/acacia_trapdoor"

push 2x2BottomRight ${wood_dark_oak_h} trapdoord0 ${wood_dark_oak}
push 2x2TopLeft ${wood_dark_oak_s} trapdoord1
push borderShortDashes ${wood_dark_oak} trapdoord2
push trapdoorHingesBig ${stone_h} trapdoord6
out_stack "block/dark_oak_trapdoor"

# Functional wooden blocks

push rail $wood_oak ladder1
push railTies $wood_oak_h ladder2
out_stack block/ladder

push waves ${wood_oak_h} table0 ${wood_oak}
push craftingGrid ${wood_oak_s} table1
push borderSolid ${wood_dark_oak} table2
push cornersTri ${wood_oak_h} table3
out_stack "block/crafting_table_top"

push_copy block/oak_planks table_side_1
push borderSolid ${wood_oak_h} table_side_2
push craftingSide ${wood_dark_oak} table_side_3
out_stack "block/crafting_table_side"

copy "block/crafting_table_side" "block/crafting_table_front"

push empty ${wood_oak} shelf0 ${wood_oak}
push_precolored bookShelves shelf1
out_stack "block/bookshelf"

copy "block/podzol_top" "block/composter_compost"

push_copy block/composter_compost compost1
push_precolored bonemealSmallNoBorder compost2
out_stack "block/composter_ready"

out_layer borderSolidThick ${wood_oak} "block/composter_top"

push stripesThick ${wood_oak_s} compostSide0 ${wood_oak}
push borderDotted ${wood_oak_h} compostSide1
out_stack "block/composter_side"

push planksTopVertical ${wood_oak} compostBottom0 ${wood_oak_s}
push borderSolidThick ${wood_oak_s} compostBottom1
push borderSolid ${wood_oak} compostBottom2
out_stack "block/composter_bottom"

push strokeTopLeftBottomRight4 ${wood_oak} jukeboxSide0 ${wood_dark_oak}
push strokeBottomLeftTopRight4 ${wood_oak} jukeboxSide1
push borderSolidThick ${wood_oak_h} jukeboxSide2
push borderDotted ${wood_oak_s} jukeboxSide3
out_stack "block/jukebox_side"

push borderSolidThick ${wood_oak_h} jukeboxTop0 ${wood_oak}
push borderDotted ${wood_oak_s} jukeboxTop1
push thirdRail ${black} jukeboxTop2
out_stack "block/jukebox_top"

push_copy block/jukebox_side noteblock1
push note ${wood_oak_s} noteblock4
out_stack "block/note_block"

# S040. BLOCKS BROKEN WITH SHEARS

push ringsCentralBullseye ${white} cobweb1
push x ${white} cobweb2
push cross ${white} cobweb3
out_stack block/cobweb

# todo: glow moss

# S070. LIQUIDS

# S080. BLOCKS BROKEN WITHOUT TOOLS

# Wool

for dye in "${DYES[@]}"; do
  push empty "${!dye}" "${dye}_wool1" "${!dye}"
  push_semitrans zigzagBroken ${gray} "${dye}_wool2" 0.25
  push_semitrans zigzagBroken2 ${light_gray} "${dye}_wool3" 0.25
  push_semitrans borderSolid ${gray} "${dye}_wool4" 0.5
  push_semitrans borderDotted ${light_gray} "${dye}_wool5" 0.5
  out_stack "block/${dye}_wool"
done

# Tnt

push tntSticksSide ${tnt} tnt10 ${tnt_s}
push borderDotted ${tnt_h} tnt15
push tntStripe ${white} tnt20
push tntSign ${black} tnt30
out_stack block/tnt_side

out_layer tntSticksEnd ${red} block/tnt_bottom ${black}

push_copy block/tnt_bottom tnt1
push tntFuzes ${black} tnt2
out_stack block/tnt_top

# Flowers

push flowerStemTall ${flower_stem} tallstem1
push flowerStemTallBorder ${flower_stem_h} tallstem2
push flowerStemBottomBorder ${flower_stem_s} tallstem3
out_stack block/sunflower_bottom

push flowerStemShort ${flower_stem} shortstem1
push flowerStemShortBorder ${flower_stem_h} shortstem2
push flowerStemBottomBorder ${flower_stem_s} shortstem3
out_stack block/sunflower_top

push sunflowerPetals ${yellow} sunflower1
push sunflowerPistil ${black} sunflower2
out_stack block/sunflower_front

out_layer sunflowerPetals block/sunflower_back sunflowerBack1

# Crops

push bambooThick ${sugarcane_s} sugarcane1
push bambooThin ${sugarcane_h} sugarcane2
push bambooThinMinusBorder ${sugarcane} sugarcane3
out_stack block/sugar_cane

out_layer wart0 ${crimson_wart_s} block/nether_wart_stage0

out_layer wart1 ${crimson_wart_s} block/nether_wart_stage1

push wart2 ${crimson_wart_s} wart2
push wart2a ${crimson_wart_h} wart2a
out_stack block/nether_wart_stage2

out_layer carrots0 ${veg_leaves_s} block/carrots_stage0

out_layer carrots1 ${veg_leaves_s} block/carrots_stage1

out_layer carrots2 ${veg_leaves_s} block/carrots_stage2

push carrots3Stems ${veg_leaves_h} carrots3a
push rootVeg ${carrot} carrots3b
out_stack block/carrots_stage3

out_layer beets0 ${veg_leaves_s} block/beetroots_stage0

out_layer beets1 ${veg_leaves_s} block/beetroots_stage1

out_layer beets2 ${veg_leaves_s} block/beetroots_stage2

push beets3Stems ${veg_leaves_h} beets3a
push rootVeg ${beetroot} beets3b
out_stack block/beetroots_stage3

out_layer potato0 ${veg_leaves_s} block/potatoes_stage0

out_layer potato1 ${veg_leaves_s} block/potatoes_stage1

out_layer potato2 ${veg_leaves_s} block/potatoes_stage2

push flowerStemShort ${veg_leaves_h} potato3
push potato ${potato} potato3a
out_stack block/potatoes_stage3

for wheatStage in $(seq 0 6); do
  push "wheat${wheatStage}" ${wheat_s} "wheat${wheatStage}layer1"
  push "wheatTexture${wheatStage}" ${wheat} "wheat${wheatStage}layer2"
  out_stack "block/wheat_stage${wheatStage}"
done

push "wheatFull" ${wheat_h} "wheatfull1"
push "wheatTextureFull" ${wheat_s} "wheatfull2"
out_stack "block/wheat_stage7"

# Lily pads and leaves are biome-colored starting from gray, like grass blocks

push lilyPad ${grass_s} pad1
push lilyPadInterior ${grass_h} pad2
out_stack block/lily_pad

push leaves1 ${grass_s} leavesa1
push leaves1a ${grass_h} leavesa2
out_stack block/acacia_leaves

push leaves2 ${grass_h} leavesb1
push leaves2a ${grass_s} leavesb2
out_stack block/birch_leaves

push leaves3 ${grass_s} leavesd1
push leaves3a ${grass_h} leavesd2
out_stack block/dark_oak_leaves

push leaves4 ${grass_s} leaveso1
push leaves4a ${grass_h} leaveso2
out_stack block/oak_leaves

push leaves5 ${grass_h} leavesm1
push leaves5a ${grass} leavesm2
push leaves5b ${grass_s} leavesm3
out_stack block/mangrove_leaves

push leaves6 ${grass_h} leavesj1
push leaves6a ${grass_s} leavesj2
out_stack block/jungle_leaves

push leaves3 ${grass_h} leavess1
push leaves3b ${grass_s} leavess2
out_stack block/spruce_leaves

# Protruding grass

push bottomPart ${grass_s} tallgrassb0
push grassTall ${grass} tallgrassb1
out_stack block/tall_grass_bottom

out_layer grassVeryShort ${grass} block/tall_grass_top

out_layer grassShort ${grass} block/grass

# Nether fungus wart blocks

push leaves6 ${crimson_wart_s} cwart1 ${crimson_wart}
push leaves6a ${crimson_wart_h} cwart2
push borderRoundDots ${crimson_wart_h} cwart3
out_stack block/nether_wart_block

push leaves3 ${warped_wart_s} wwart1 ${warped_wart}
push leaves3a ${warped_wart_h} wwart2
push leaves3b ${warped_wart_h} wwart3
push borderSolid ${warped_wart_s} wwart4
push borderShortDashes ${warped_wart_h} wwart5
out_stack block/warped_wart_block

# Mushrooms & fungi

push mushroomStem $mushroom_stem mush1
push mushroomCapRed $mushroom_red_cap mush2
out_stack block/red_mushroom

push mushroomStem $mushroom_stem bmush1
push mushroomCapBrown $mushroom_brown_cap bmush2
out_stack block/brown_mushroom

push mushroomStem $bark_crimson_s cfungus1
push mushroomCapRed $crimson_wart cfungus2
push crimsonFungusSpots $fungus_spot cfungus3
out_stack block/crimson_fungus

push mushroomStem $bark_warped_s cfungus1
push warpedFungusCap $warped_wart cfungus2
push warpedFungusSpots $fungus_spot cfungus3
out_stack block/warped_fungus

push borderSolid ${shroomlight_h} sl0 ${shroomlight}
push checksSmall ${shroomlight_s} sl1
push shroomlightOn ${shroomlight_h} sl2
out_stack block/shroomlight

# Redstone dust

out_layer redstoneDot $white block/redstone_dust_dot

out_layer redstoneLine $white block/redstone_dust_line0

copy block/redstone_dust_line0 block/redstone_dust_line1

# Target

push grassTall $target_h targetSide1 $target_s
push ringsCentralBullseye $redstone_s targetSide2
out_stack block/target_side

push checksSmall $target_h targetTop1 $target_s
push ringsCentralBullseye $redstone_s targetTop2
out_stack block/target_top

# Torches

push torchBase $wood_oak torch1
push torchShadow $wood_oak_s torch2
push_precolored torchFlameSmall torch3
out_stack block/torch

push torchBase $wood_oak storch1
push torchShadow $wood_oak_s storch2
push_precolored soulTorchFlameSmall storch3
out_stack block/soul_torch

push torchBase $wood_oak rtorch1
push torchShadow $wood_oak_s rtorch2
push torchRedstoneHead $black rtorch3
out_stack block/redstone_torch_off

push torchBase $wood_oak artorch1
push torchShadow $wood_oak_s artorch2
push torchRedstoneHead ${redstone_h} artorch3
push torchRedstoneHeadShadow ${redstone_s} artorch4
out_stack block/redstone_torch

# S090. UNBREAKABLE BLOCKS

push borderSolid $bedrock_s bedrock1 $bedrock
push borderLongDashes $bedrock_h bedrock2
push strokeTopLeftBottomRight2 $bedrock_s bedrock3
push strokeBottomLeftTopRight2 $bedrock_h bedrock4
out_stack block/bedrock

push_copy block/end_stone endPortalSide1
push endPortalFrameSide $structure_block_bg endPortalSide2
out_stack block/end_portal_frame_side

push_copy block/end_stone endPortalTop1
push endPortalFrameTop $structure_block_bg endPortalTop2
push railDetector $black endPortalTop3
out_stack block/end_portal_frame_top

# Command blocks

for type in "${CMD_BLOCK_TYPES[@]}"; do
  shadow=${type}_s
  highlight=${type}_h

  push diagonalChecksTopLeftBottomRight "${!shadow}" "${type}_cbb1" "${!type}"
  push diagonalChecksBottomLeftTopRight "${!highlight}" "${type}_cbb2"
  push diagonalOutlineChecksTopLeftBottomRight "${!highlight}" "${type}_cbb3"
  push diagonalOutlineChecksBottomLeftTopRight "${!shadow}" "${type}_cbb4"
  out_stack "block/${type}_basebase"
done

rename_out block/command_block_basebase block/command_block_base

push_copy block/chain_command_block_basebase chcb1
push_precolored commandBlockChains chcb2
out_stack block/chain_command_block_base
{
  join_output_job block/chain_command_block_base
  done_with_out block/chain_command_block_basebase
} &

push_copy block/repeating_command_block_basebase rcb1
push loopArrow $black rcb2
out_stack block/repeating_command_block_base
{
  join_output_job block/repeating_command_block_base
  done_with_out block/repeating_command_block_basebase
} &

for type in "${CMD_BLOCK_TYPES[@]}"; do
  shadow=${type}_s
  highlight=${type}_h

  push_copy "block/${type}_base" "${type}_frontbase1"
  push commandBlockOctagon $black "${type}_frontbase2"
  push craftingGridSpacesCross $white "${type}_frontbase3"
  out_stack "block/${type}_front_base"

  for frame in $(seq 1 4); do
    push_copy "block/${type}_front_base" "${type}_${frame}_front1"
    push "dotsInCross${frame}" $command_block_dot "${type}_${frame}_front2"
    out_stack "block/${type}_front_${frame}"
  done
  animate4 "block/${type}_front" "block/${type}_front_base"

  push_copy "block/${type}_base" "${type}_backbase1"
  push commandBlockSquare $black "${type}_backbase2"
  push craftingGridSpaces $white "${type}_backbase3"
  out_stack "block/${type}_back_base"

  for frame in $(seq 1 4); do
    push_copy "block/${type}_back_base" "${type}_${frame}_back1"
    push "glider${frame}" $command_block_dot "${type}_${frame}_back2"
    out_stack "block/${type}_back_${frame}"
  done
  animate4 "block/${type}_back" "block/${type}_back_base"

  push_copy "block/${type}_base" "${type}_sidebase1"
  push commandBlockArrowUnconditional $black "${type}_sidebase2"
  push craftingGridSpaces $white "${type}_sidebase3"
  out_stack "block/${type}_side_base"

  for frame in $(seq 1 4); do
    push_copy "block/${type}_side_base" "${type}_${frame}_side1"
    push "glider${frame}" $command_block_dot "${type}_${frame}_side2"
    out_stack "block/${type}_side_${frame}"
  done
  animate4 "block/${type}_side" "block/${type}_side_base"

  push_copy "block/${type}_base" "${type}_condbase1"
  push commandBlockArrow $black "${type}_condbase2"
  push craftingGridSpaces $white "${type}_condbase3"
  out_stack "block/${type}_conditional_base"
  {
    join_output_job "block/${type}_conditional_base"
    done_with_out "block/${type}_base"
  } &

  for frame in $(seq 1 4); do
    push_copy "block/${type}_conditional_base" "${type}_${frame}_cond1"
    push "glider${frame}" $command_block_dot "${type}_${frame}_cond2"
    out_stack "block/${type}_conditional_${frame}"
  done
  animate4 "block/${type}_conditional" "block/${type}_conditional_base"
done

# Structure & jigsaw blocks

push empty $structure_block_fg sb1 $structure_block_bg
push_semitrans borderDotted $structure_block_fg sb2 0.25
out_stack block/jigsaw_bottom

out_layer cornerCrosshairs $structure_block_fg block/structure_block_corner $structure_block_bg

push_copy block/jigsaw_bottom sbd1
push data $structure_block_fg sbd2
out_stack block/structure_block_data

push_copy block/jigsaw_bottom sbl1
push folderLoad $structure_block_fg sbl2
out_stack block/structure_block_load

push_copy block/jigsaw_bottom sbs1
push folderSave $structure_block_fg sbs2
out_stack block/structure_block_save

push_copy block/jigsaw_bottom jbt1
push jigsaw $structure_block_fg jbt2
out_stack block/jigsaw_top

push_copy block/jigsaw_bottom jbs1
push arrowUp $structure_block_fg jbs2
out_stack block/jigsaw_side

push_copy block/jigsaw_bottom jbl1
push jigsawLock $structure_block_fg jbl2
out_stack block/jigsaw_lock

# S100. ITEMS NOT USED IN BLOCK TEXTURES

# Music discs

i=0
for disc in "${NORMAL_MUSIC_DISCS[@]}"; do
  push musicDisc ${music_disc} "disc_${disc}_1"
  push musicDiscGroove ${music_disc_s} "disc_${disc}_2"
  push musicDiscLabel "${!DISC_LABELS[$i]}" "disc_${disc}_3"
  out_stack "item/music_disc_${disc}"
  i=$((i+1))
done

push musicDiscBroken ${music_disc_s} disc_11_1
push musicDiscGrooveBroken ${music_disc_h} disc_11_2
out_stack "item/music_disc_11"

# S200. PARTICLES

out_layer note ${grass_h} "particle/note"

# S900. PACKAGING

echo "All jobs launched; waiting for them to finish..."
sem --wait --progress

zip -r "debug-${SIZE}.zip" "$DEBUGDIR"
zip -r "layers-${SIZE}.zip" "$PNG_DIRECTORY"

ZIP_FILE="OcHD-${SIZE}x${SIZE}.zip"
cd "${OUTROOT}"
rm "${ZIP_FILE}" 2>/dev/null || true
zip -r "${ZIP_FILE}"  ./*
mv "${ZIP_FILE}" ..
cd ..
