#!/bin/bash

# S00. ARRAY CONSTANTS

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

# S01. COLOR CONSTANTS
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

layer () {
  sed -e "s/#000000/$2/g" "svg/$1.svg" > "$TMPDIR/recolor.svg"
  if [ -z ${4+x} ]; then
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -y 0.0
  else
    inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png" -b "$4" -y 1.0
  fi
  rm "$TMPDIR/recolor.svg"
}

semitrans () {
  convert "$TMPDIR/$1.png" -alpha set -background none -channel A -evaluate multiply "$2" +channel "$TMPDIR/$1.png"
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

donewith () {
  mv "${OUTDIR}/${1}.png" "${DEBUGDIR}"
}

animate4 () {
  convert "${OUTDIR}/${1}_1.png" "${OUTDIR}/${1}_2.png" "${OUTDIR}/${1}_3.png" "${OUTDIR}/${1}_4.png" -append "${OUTDIR}/${1}.png"
  donewith "${1}_1"
  donewith "${1}_2"
  donewith "${1}_3"
  donewith "${1}_4"
}

SIZE=$1
TMPDIR="tmp/${SIZE}x${SIZE}"
DEBUGDIR="debug/${SIZE}x${SIZE}"
OUTDIR="out/${SIZE}x${SIZE}/assets/minecraft/textures"
rm -rf $OUTDIR || true
mkdir -p $OUTDIR
mkdir $OUTDIR/block
mkdir $OUTDIR/item
mkdir $OUTDIR/particle
rm -rf "$TMPDIR" || true
mkdir -p "$TMPDIR"
rm -rf "$DEBUGDIR" || true
mkdir -p "$DEBUGDIR"
cp -r metadata/*.* $OUTDIR

# S09. ITEMS USED IN MULTIPLE CATEGORIES

# Bones and bone meal

layer bonemealSmall $bone_block_h bonemeal1
stack item/bone_meal

layer boneBottomLeftTopRight $bone_block_h bone1
stack item/bone

# S10. SHOVEL BLOCKS

# Soft earth

layer dots3 $dirt_s dirt1 $dirt
layer dots2 $dirt_h dirt2
stack block/dirt

layer checksLarge ${gravel_s} gravel1 ${gravel}
layer checksLargeOutline ${gravel_h} gravel2
stack block/gravel

layer checksSmall ${sand_s} sand1 ${sand}
layer checksSmallOutline ${sand_h} sand2
stack block/sand

layer checksSmall ${red_sand_h} rsand1 ${red_sand}
layer checksSmallOutline ${red_sand_s} rsand2
stack block/red_sand

layer diagonalChecksTopLeftBottomRight ${clay_s} clay1 ${clay}
layer diagonalChecksBottomLeftTopRight ${clay_h} clay2
layer diagonalOutlineChecksTopLeftBottomRight ${clay_h} clay3
layer diagonalOutlineChecksBottomLeftTopRight ${clay_s} clay4
stack block/clay

# Nether

layer borderSolid ${soul_sand_s} ssand1 ${soul_sand}
layer checksSmall ${soul_sand_h} ssand2
layer soulHeads ${soul_sand_s} ssand3
layer soulTopLeftFace ${soul_sand_h} ssand4
layer soulBottomRightFace ${soul_sand_h} ssand5
stack block/soul_sand

layer borderSolid ${soul_soil} ssoil0 ${soul_soil_s}
layer strokeBottomLeftTopRight4 ${soul_soil_h} ssoil1
layer soulHeads ${soul_soil} ssoil3
layer soulTopLeftFace ${soul_soil_h} ssoil4
layer soulBottomRightFace ${soul_soil_s} ssoil5
stack block/soul_soil

# Ground covers

layer vees $grass_s grass $grass_h
stack block/grass_block_top

layer topPart $grass_h grass_side_ol1
layer veesTop $grass_s grass_side_ol2
stack block/grass_block_side_overlay

copy block/dirt grass_side_1
layer topPart $grass_item_h grass_side_2
layer veesTop $grass_item_s grass_side_3
stack block/grass_block_side

layer zigzagBroken ${podzol_h} podzol1 ${podzol}
layer borderDotted ${podzol_s} podzol2
stack block/podzol_top

copy block/dirt podzol_side1
layer topPart $podzol podzol_side2
layer zigzagBrokenTopPart ${podzol_h} podzol_side3
stack block/podzol_side

layer diagonalChecksTopLeftBottomRight ${mycelium_s} mycelium1 ${mycelium}
layer diagonalChecksBottomLeftTopRight ${mycelium_h} mycelium2
layer diagonalOutlineChecksTopLeftBottomRight ${mycelium_h} mycelium3
layer diagonalOutlineChecksBottomLeftTopRight ${mycelium_s} mycelium4
stack block/mycelium_top

copy block/dirt mycelium_side1
magick "${OUTDIR}/block/mycelium_top.png" -crop '100%x34.375%' "${TMPDIR}/mycelium_side2.png"
# FIXME: Find a way to not output these
rm "${TMPDIR}/mycelium_side2-1.png"
rm "${TMPDIR}/mycelium_side2-2.png"
stack block/mycelium_side

layer strokeTopLeftBottomRight4 ${moss_h} moss1 ${moss}
layer strokeBottomLeftTopRight4 ${moss_s} moss2
layer borderSolid ${moss_h} moss3
layer borderShortDashes ${moss_s} moss4
stack block/moss_block

layer strokeTopLeftBottomRight2 ${mud_h} mud1 ${mud}
layer strokeBottomLeftTopRight2 ${mud_s} mud2
layer borderSolid ${mud_h} mud3
layer borderDotted ${mud_s} mud4
stack block/mud

layer snow ${snow_s} snow1 ${snow}
stack block/snow

copy block/dirt snow_side_1
layer topPart ${snow} snow_side_2
layer snowTopPart ${snow_s} snow_side_3
stack block/grass_block_snow

# Concrete powder

for dye in "${DYES[@]}"; do
  layer empty "${!dye}" conc1 "${!dye}"
  layer checksSmall ${gray} conc2
  semitrans conc2 0.25
  layer checksSmall ${light_gray} conc3
  semitrans conc3 0.25
  stack "block/${dye}_concrete_powder"
done

layer bambooThick ${farmland} farmland1 ${farmland_h}
layer bambooThinMinusBorder ${farmland_s} farmland2
stack "block/farmland"

layer bambooThick ${farmland_moist} mfarmland1 ${farmland_moist_h}
layer bambooThinMinusBorder ${farmland_moist_s} mfarmland2
layer dots0 ${stone_s} mfarmland3
stack "block/farmland_moist"

# S20. PICKAXE BLOCKS

# Rock - Overworld

layer checksLarge $stone_h stone $stone_s
stack block/stone

layer borderSolid $stone_ss stone2 $stone
stack block/smooth_stone

layer checksLarge $stone_s cobblestone1 $stone_h
layer checksSmall $stone cobblestone2
layer borderSolid $stone_hh cobblestone3
layer borderShortDashes $stone_ss cobblestone6
stack block/cobblestone

copy block/cobblestone mcs1
layer dots3 ${moss_h} mcs4
layer dots2 ${moss_s} mcs5
layer dots1 ${moss} mcs6
layer borderSolid ${moss_h} mcs10
layer borderShortDashes ${moss_s} mcs11
stack block/mossy_cobblestone

layer checksLarge $deepslate_h deepslate1 $deepslate_s
layer checksSmall $deepslate deepslate2
stack block/cobbled_deepslate

layer diagonalChecksBottomLeftTopRight $deepslate_h deep1 $deepslate
layer diagonalChecksTopLeftBottomRight $deepslate_s deep2
stack block/deepslate

copy block/deepslate deeptop0
layer borderSolid ${deepslate_s} deeptop11
layer borderDotted ${deepslate_h} deeptop12
stack block/deepslate_top

layer checksLarge ${sand_s} sandstone1 ${sand}
layer borderLongDashes ${sand_h} sandstone2
stack block/sandstone_bottom

copy block/sandstone_bottom sandstonetop1
layer borderSolidThick ${sand_s} sandstonetop2
layer borderSolid ${sand_h} sandstonetop3
stack block/sandstone_top

layer topPart ${sand_s} sandstoneside1 ${sand}
layer borderSolid ${sand_s} sandstoneside2
layer topStripeThick ${sand_h} sandstoneside3
layer borderShortDashes ${sand_h} sandstoneside4
stack block/sandstone

layer checksLarge ${sand_h} csandstone1 ${sand}
layer borderSolid ${sand_s} csandstone2
layer borderSolidTopLeft ${sand_h} csandstone3
stack block/cut_sandstone

copy block/cut_sandstone chsandstone1
layer creeperFaceSmall ${sand_s} chsandstone4
stack block/chiseled_sandstone

layer checksLarge ${red_sand_h} rsandstone1 ${red_sand}
layer borderLongDashes ${red_sand_s} rsandstone2
stack block/red_sandstone_bottom

copy block/red_sandstone_bottom rsandstonetop1
layer borderSolidThick ${red_sand_h} rsandstonetop2
layer borderSolid ${red_sand_s} rsandstonetop3
stack block/red_sandstone_top

layer topPart ${red_sand_s} rsandstoneside1 ${red_sand}
layer borderSolid ${red_sand_h} rsandstoneside2
layer topStripeThick ${red_sand_h} rsandstoneside3
layer borderShortDashes ${red_sand_s} rsandstoneside4
stack block/red_sandstone

layer checksLarge ${red_sand_h} rcsandstone1 ${red_sand}
layer borderSolid ${red_sand_s} rcsandstone2
layer borderSolidTopLeft ${red_sand_h} rcsandstone3
stack block/cut_red_sandstone

copy block/cut_red_sandstone chrsandstone1
layer witherSymbol ${red_sand_s} chrsandstone2
stack block/chiseled_red_sandstone

layer bigRingsBottomLeftTopRight ${andesite_h} a1 ${andesite}
layer bigRingsTopLeftBottomRight ${andesite_s} a2
stack block/andesite

copy block/andesite ap1
layer borderSolidBottomRight ${andesite_s} ap2
layer borderSolidTopLeft ${andesite_h} ap3
stack block/polished_andesite

layer bigRingsBottomLeftTopRight ${diorite_s} d1 ${diorite}
layer bigRingsTopLeftBottomRight ${diorite_h} d2
stack block/diorite

copy block/diorite dp1
layer borderSolidBottomRight ${diorite_s} dp2
layer borderSolidTopLeft ${diorite_h} dp3
stack block/polished_diorite

layer bigDotsBottomLeftTopRight ${granite_s} g11 ${granite}
layer bigDotsTopLeftBottomRight ${granite_h} g12
layer bigRingsBottomLeftTopRight ${granite_h} g21
layer bigRingsTopLeftBottomRight ${granite_s} g22
stack block/granite

copy block/granite gp1
layer borderSolidBottomRight ${granite_s} gp2
layer borderSolidTopLeft ${granite_h} gp3
stack block/polished_granite

# Rock - Nether

layer diagonalOutlineChecksTopLeftBottomRight $netherrack_s nether1 $netherrack
layer diagonalOutlineChecksBottomLeftTopRight $netherrack_h nether2
stack block/netherrack

layer strokeTopLeftBottomRight2 ${warped_nylium_h} wnylium1 ${warped_nylium}
layer strokeBottomLeftTopRight2 ${warped_nylium_s} wnylium2
layer borderShortDashes ${warped_nylium_s} wnylium3
stack block/warped_nylium

copy block/netherrack wnyliums1
layer topPart ${warped_nylium} wnyliums2
layer strokeTopLeftBottomRight2TopPart ${warped_nylium_h} wnyliums3
layer strokeBottomLeftTopRight2TopPart ${warped_nylium_s} wnyliums4
stack block/warped_nylium_side

layer strokeTopLeftBottomRight2 ${crimson_nylium_s} cnylium1 ${crimson_nylium}
layer strokeBottomLeftTopRight2 ${crimson_nylium_h} cnylium2
layer borderLongDashes ${crimson_nylium_h} cnylium3
stack block/crimson_nylium

copy block/netherrack cnyliums1
layer topPart ${crimson_nylium} cnyliums2
layer strokeTopLeftBottomRight2TopPart ${crimson_nylium_s} cnyliums3
layer strokeBottomLeftTopRight2TopPart ${crimson_nylium_h} cnyliums4
stack block/crimson_nylium_side

copy block/netherrack wnyliums1
layer topPart ${warped_nylium} wnyliums2
layer dots3TopPart ${warped_nylium_h} wnyliums3
stack block/warped_nylium_side

layer bigDotsBottomLeftTopRight ${blackstone_h} bss1 ${blackstone_s}
layer bigDotsTopLeftBottomRight ${blackstone_h} bss2
stack block/blackstone

layer bigRingsBottomLeftTopRight ${blackstone_h} bst1 ${blackstone}
layer bigRingsTopLeftBottomRight ${blackstone_s} bst2
stack block/blackstone_top

copy block/blackstone gbs0
layer bigRingsBottomLeftTopRight ${gold} gbs1
stack block/gilded_blackstone

copy block/blackstone pbs1
layer borderSolidBottomRight ${blackstone_s} pbs2
layer borderSolidTopLeft ${blackstone_h} pbs3
stack block/polished_blackstone

layer bigRingsBottomLeftTopRight ${basalt_h} bas1 ${basalt}
layer bigRingsTopLeftBottomRight ${basalt_s} bas2
layer borderSolid ${basalt_s} bas3
layer borderLongDashes ${basalt_h} bas4
stack block/basalt_top

layer stripesVerticalThick ${basalt} bass1 ${basalt_s}
layer borderLongDashes ${basalt_h} bass2
stack block/basalt_side

layer stripesVerticalThick ${basalt_h} basps1 ${basalt}
layer borderSolidBottomRight ${basalt_s} basps2
layer borderSolidTopLeft ${basalt_h} basps3
stack block/polished_basalt_side

layer ringsCentralBullseye ${basalt_s} baspt11 ${basalt}
layer rings ${basalt_h} baspt12
layer cutInQuarters1 ${basalt_s} baspt20 ${basalt}
layer cutInQuarters2 ${basalt_h} baspt21
layer borderSolidBottomRight ${basalt_s} baspt30
layer borderSolidTopLeft ${basalt_h} baspt31
stack block/polished_basalt_top

layer borderSolid ${glowstone_ss} gs0 ${glowstone_s}
layer checksSmall ${glowstone} gs1
layer lampOn ${glowstone_h} gs2
stack block/glowstone

# Rock - End

layer checksLargeOutline ${end_stone_s} endstone1 ${end_stone}
layer bigDotsTopLeftBottomRight ${end_stone_h} endstone2
stack block/end_stone

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

for ore in "${SIMPLE_ORES[@]}"; do
  layer "$ore" "${!ore}" "${ore}_item"
  stack "item/${ore}"

  highlight="${ore}_h"
  shadow="${ore}_s"

  layer bigCircle "${!shadow}" "${ore}_rawitem1"
  layer "$ore" "${!highlight}" "${ore}_rawitem3"
  stack "item/raw_${ore}"

  layer checksSmall "${!highlight}" "${ore}_rawblock1" ${!ore}
  layer "$ore" "${!shadow}" "${ore}_rawblock2"
  stack "block/raw_${ore}_block"

  layer ingotMask "${!ore}" "${ore}_ingot1"
  layer ingotBorder "${!shadow}" "${ore}_ingot2"
  layer ingotBorderTopLeft "${!highlight}" "${ore}_ingot3"
  layer "$ore" "${!shadow}" "${ore}_ingot4"
  stack "item/${ore}_ingot"
done

for ore in "${ORES[@]}"; do
  copy block/stone "${ore}1"
  copy "item/${ore}" "${ore}2"
  stack "block/${ore}_ore"

  copy block/deepslate "deep${ore}1"
  copy "item/${ore}" "deep${ore}2"
  stack "block/deepslate_${ore}_ore"

  copy block/netherrack "nether${ore}1"
  copy "item/${ore}" "nether${ore}2"
  stack "block/nether_${ore}_ore"
done

for ore in "${SIMPLE_ORES[@]}"; do
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

layer streaks ${emerald_hh} emerald_block1 ${emerald_h}
layer emeraldTopLeft ${emerald_hh} emerald_block2
layer emeraldBottomRight ${emerald_s} emerald_block3
layer borderSolid ${emerald} emerald_block4
layer borderSolidTopLeft ${emerald_h} emerald_block5
stack block/emerald_block

move item/quartz_ingot item/quartz
move block/raw_quartz_block block/quartz_block_bottom
move block/quartz_block block/quartz_block_side

move item/lapis item/lapis_lazuli
move item/raw_redstone item/redstone

layer streaks ${quartz_h} quartz_top0 ${quartz}
layer borderSolidTopLeft ${quartz_h} quartz_top1
layer borderSolidBottomRight ${quartz_s} $quartz_top2
stack block/quartz_block_top

# Carved and/or oxidized ores

layer streaks ${copper_h} cutcopper10 ${copper}
layer borderSolid ${copper_s} cutcopper11
layer borderSolidTopLeft ${copper_h} cutcopper12
layer cutInQuarters1 ${copper_s} cutcopper20
layer cutInQuarters2 ${copper_h} cutcopper30
stack block/cut_copper

for oxidation_state in "${OXIDATION_STATES[@]}"; do
  color="${oxidation_state}_copper"
  shadow="${oxidation_state}_copper_s"
  highlight="${oxidation_state}_copper_h"

  layer streaks "${!highlight}" "${oxidation_state}_copper_block0" "${!color}"
  layer borderSolidTopLeft ${!highlight} "${oxidation_state}_copper_block2"
  layer borderSolidBottomRight ${!shadow} "${oxidation_state}_copper_block3"
  layer copper2oxide "${!shadow}" "${oxidation_state}_copper_block4"
  stack "block/${oxidation_state}_copper"

  layer streaks "${!highlight}" cutcopper10 "${!color}"
  layer borderSolid "${!shadow}" cutcopper11
  layer borderSolidTopLeft "${!highlight}" cutcopper12
  layer cutInQuarters1 "${!shadow}" cutcopper20
  layer cutInQuarters2 "${!highlight}" cutcopper30
  stack "block/cut_${oxidation_state}_copper"
done

layer rings ${quartz_h} quartz1 ${quartz}
layer borderSolid ${quartz_s} quartz2
layer borderDotted ${quartz_h} quartz3
stack block/quartz_pillar_top

layer tntSticksSide ${quartz} qp1 ${quartz_s}
layer borderSolid ${quartz_s} qp2
layer borderLongDashes ${quartz_h} qp3
stack block/quartz_pillar

# Bricks

layer strokeTopLeftBottomRight2 ${mud_brick_h} mb1 ${mud_brick}
layer strokeBottomLeftTopRight2 ${mud_brick_s} mb2
layer borderDotted ${mud_h} mb4
stack block/packed_mud

layer strokeTopLeftBottomRight2 ${mud_brick_h} mb1 ${mud_brick}
layer strokeBottomLeftTopRight2 ${mud_brick_s} mb2
layer bricks ${mud_s} mb3
layer borderDotted ${mud_h} mb4
stack block/mud_bricks

layer checksLarge $stone_h sb1 $stone
layer bricks $stone_ss sb2
layer borderShortDashes $stone_s sb3
stack block/stone_bricks

layer checksLarge $stone_h crsb1 $stone
layer bricks $stone_ss crsb2
layer streaks $stone_ss crsb3
layer borderShortDashes $stone_s crsb5
stack block/cracked_stone_bricks

copy block/stone_bricks msb1
layer dots3 ${moss_s} msb2
layer dots2 ${moss_h} msb3
layer dots1 ${moss} msb4
layer borderSolid ${moss_h} msb5
layer borderShortDashes ${moss_s} msb6
stack block/mossy_stone_bricks

copy block/stone csb1
layer ringsCentralBullseye ${stone_hh} csb2
layer rings ${stone_ss} csb3
layer borderSolid ${stone_ss} csb10
layer borderSolidTopLeft ${stone_hh} csb11
stack block/chiseled_stone_bricks

layer bricks $mortar bricks1 $terracotta
layer borderDotted $mortar bricks2
semitrans bricks2 0.5
stack block/bricks

layer streaks ${quartz_h} qb0 ${quartz}
layer bricks ${quartz_s} qb1
layer borderDotted ${quartz_h} qb2
stack block/quartz_bricks

layer bricks ${blackstone_s} pbs1 ${blackstone}
layer borderDotted ${blackstone_h} pbs3
stack block/polished_blackstone_bricks

copy block/deepslate db0
layer bricks ${deepslate_s} db1
layer borderDotted ${deepslate_h} db2
layer borderDottedBottomRight ${deepslate_s} db3
stack block/deepslate_bricks

copy block/end_stone esb0
layer bricks ${end_stone_s} esb1
layer borderShortDashes ${end_stone_h} esb2
stack block/end_stone_bricks

# todo: nether bricks
# Glass

layer borderSolid $white glass1
layer borderSolidBottomRight $gray glass2
layer streaks $white glass3
stack "block/glass"

layer borderSolid $white tglass1
semitrans tglass1 0.5
layer streaks $white tglass3
semitrans tglass3 0.25
stack "block/tinted_glass"

for dye in "${DYES[@]}"; do
  layer empty ${black} glass1 "${!dye}"
  semitrans glass1 0.25
  layer borderSolid "${!dye}" glass2
  layer streaks "${!dye}" glass3
  stack "block/${dye}_stained_glass"

  layer paneTop "${!dye}" glass_top1
  stack "block/${dye}_stained_glass_pane_top"
done

copy "block/white_stained_glass_pane_top" glassTop1
stack block/glass_pane_top

# Concrete

for dye in "${DYES[@]}"; do
  layer empty "${!dye}" conc1 "${!dye}"
  layer x ${gray} conc2
  semitrans conc2 0.25
  layer borderLongDashes ${light_gray} conc3
  semitrans conc3 0.25
  stack "block/${dye}_concrete"
done

# Bone block

layer borderSolid $bone_block_h boneblock1 $bone_block_s
layer bonesXor ${bone_block_h} boneblock2
semitrans boneblock2 0.5
stack block/bone_block_top

layer borderSolid $bone_block_s boneblockside1 $bone_block
layer borderDotted $bone_block_h boneblockside2
layer boneBottomLeftTopRight $bone_block_s boneblockside3
layer boneTopLeftBottomRight $bone_block_h boneblockside4
stack block/bone_block_side

# Rails

layer railTies $wood_oak rail1
layer rail $stone_h rail2
stack block/rail

layer railTies $wood_oak_s rail1
layer thirdRail $black rail2
layer rail $gold rail3
stack block/powered_rail

layer railTies $wood_oak_s rail1
layer thirdRail $redstone_h rail2
layer rail $gold rail3
stack block/powered_rail_on

layer railTies $wood_oak_s arail0
layer rail $stone_h arail1
layer thirdRail $black arail2
stack block/activator_rail

layer railTies $wood_oak_s aarail0
layer rail $stone_h aarail1
layer thirdRail $redstone_h aarail2
stack block/activator_rail_on

layer railTies $wood_oak_s drail0
layer rail $stone_h drail1
layer railDetectorPlate $black drail2
stack block/detector_rail

layer railTies $wood_oak_s adrail0
layer rail $stone_h adrail1
layer railDetectorPlate $redstone_h adrail2
stack block/detector_rail_on

layer railTieCorner $wood_oak railc0
layer railCorner $stone_h railc1
stack block/rail_corner

# Redstone components

copy block/smooth_stone repeater1
layer repeaterSideInputs ${stone_s} repeater2
layer repeater ${black} repeater3
stack block/repeater

copy block/smooth_stone repeatero1
layer repeaterSideInputs ${stone_s} repeatero2
layer repeater ${redstone_h} repeatero3
stack block/repeater_on

copy block/smooth_stone comparator1
layer repeaterSideInputs ${stone_s} comparator2
layer comparator ${black} comparator3
stack block/comparator

copy block/smooth_stone comparatoro1
layer repeaterSideInputs ${stone_s} comparatoro2
layer comparator ${redstone_h} comparatoro3
stack block/comparator_on

layer bigDiamond ${redstone_s} rloff0 ${redstone}
layer lamp ${redstone_h} rloff2
layer borderSolidBottomRight ${redstone_s} rloff4
layer borderSolidTopLeft ${redstone_h} rloff6
stack block/redstone_lamp

layer bigDiamond ${redstone_lamp_s} rl0 ${redstone_lamp}
layer lampOn ${redstone_lamp_h} rl1
layer borderSolidBottomRight ${redstone_lamp_s} rl2
layer borderSolidTopLeft ${redstone_lamp_h} rl3
stack block/redstone_lamp_on

# Job-site and misc pickaxe blocks

layer bottomHalf $stone_h furnaceside1 $stone
layer borderSolid $stone_ss furnaceside2
stack block/furnace_side

copy block/furnace_side furnace1
layer furnaceFront $black furnace2
stack block/furnace_front

copy block/furnace_side furnacel1
layer furnaceFrontLit $black furnacel2
stack block/furnace_front_on

# S3. AXE BLOCKS

# Planks

for wood in "${WOODS[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"

  layer waves "${!highlight}" "${wood}_planks0" "${!midtone}"
  layer planksTopBorder "${!shadow}" "${wood}_planks1"
  layer borderShortDashes "${!highlight}" "${wood}_planks2"
  stack "block/${wood}_planks"
done

# Logs, wood & hyphae

for wood in "${OVERWORLD_WOODS[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  layer borderSolid "${!bark_s}" logSide3 "${!bark}"
  layer borderDotted "${!bark_h}" logSide4
  layer zigzagSolid "${!bark_s}" logSide5
  layer zigzagSolid2 "${!bark_h}" logSide6
  stack "block/${wood}_log"

  layer borderSolid "${!shadow}" strippedLogSide1 "${!midtone}"
  layer borderShortDashes "${!highlight}" strippedLogSide2
  stack "block/stripped_${wood}_log"

  copy "block/stripped_${wood}_log" strippedLog0
  layer ringsCentralBullseye "${!highlight}" strippedLog1
  layer rings "${!shadow}" strippedLog2
  stack "block/stripped_${wood}_log_top"

  copy "block/stripped_${wood}_log_top" logTop1
  layer borderSolid "${!bark}" logTop2
  layer borderDotted "${!bark_s}" logTop3
  stack "block/${wood}_log_top"
done

for wood in "${FUNGI[@]}"; do
  highlight="wood_${wood}_h"
  shadow="wood_${wood}_s"
  midtone="wood_${wood}"
  bark_h="bark_${wood}_h"
  bark_s="bark_${wood}_s"
  bark="bark_${wood}"

  layer borderSolid "${!bark_s}" stemSide1 "${!bark}"
  layer waves "${!bark_h}" stemSide2
  stack "block/${wood}_stem"

  layer borderSolid "${!shadow}" strippedLogSide1 "${!midtone}"
  layer borderDotted "${!highlight}" strippedLogSide2
  stack "block/stripped_${wood}_stem"

  copy "block/stripped_${wood}_stem" strippedLog0
  layer ringsCentralBullseye "${!shadow}" strippedLog1
  layer rings "${!highlight}" strippedLog2
  stack "block/stripped_${wood}_stem_top"

  copy "block/stripped_${wood}_stem_top" logTop1
  layer borderSolid "${!bark}" logTop2
  layer borderDotted "${!bark_s}" logTop3
  stack "block/${wood}_stem_top"
done

# Giant mushrooms

layer mushroomSpots ${white} rmush1 $mushroom_red_cap
layer borderRoundDots ${white} rmush2
stack block/red_mushroom_block

layer rings ${mushroom_brown_cap_h} bmush1 ${mushroom_brown_cap_s}
stack block/brown_mushroom_block

layer borderRoundDotsVaryingSize ${mushroom_inside_s} mushin1 ${mushroom_inside}
stack block/mushroom_block_inside

layer stripesThick ${mushroom_stem_s} mushstem1 ${mushroom_stem_h}
layer borderShortDashes ${mushroom_stem} mushstem2
stack block/mushroom_stem

# Wooden trapdoors

layer waves ${wood_warped} trapdoorw1
layer borderSolidThick ${wood_warped} trapdoorw2
layer borderSolid ${wood_warped_h} trapdoorw3
layer borderShortDashes ${wood_warped_s} trapdoorw4
layer trapdoorHingesBig ${!stone_s} trapdoorw5
layer trapdoorHinges ${!stone_h} trapdoorw6
stack "block/warped_trapdoor"

layer zigzagSolid2 ${wood_crimson_h} trapdoorc0
layer zigzagSolid ${wood_crimson_s} trapdoorc1
layer borderSolidThick ${wood_crimson} trapdoorc2
layer borderSolid ${wood_crimson_s} trapdoorc3
layer borderShortDashes ${wood_crimson_h} trapdoorc4
layer trapdoorHingesBig ${!stone_h} trapdoorc5
layer trapdoorHinges ${!stone_s} trapdoorc6
stack "block/crimson_trapdoor"

layer cross ${wood_oak} trapdooro1
layer borderSolidThick ${wood_oak} trapdooro2
layer borderSolid ${wood_oak_s} trapdooro3
layer borderLongDashes ${wood_oak_h} trapdooro4
layer trapdoorHingesBig ${stone} trapdooro5
layer trapdoorHinges ${stone_h} trapdooro6
stack "block/oak_trapdoor"

layer planksTopVertical ${wood_spruce} trapdoors1 ${wood_spruce_s}
layer borderSolidThick ${wood_spruce_s} trapdoors2
layer borderLongDashes ${wood_spruce_h} trapdoors3
layer trapdoorHingesBig ${stone} trapdoors5
layer trapdoorHinges ${stone_s} trapdoors6
stack "block/spruce_trapdoor"

layer trapdoor1 ${wood_birch} trapdoorb1
layer borderSolid ${wood_birch_s} trapdoorb2
layer trapdoorHingesBig ${stone_s} trapdoorb3
stack "block/birch_trapdoor"

layer trapdoor2 ${wood_jungle} trapdoorj1
layer borderSolid ${wood_jungle_s} trapdoorj2
layer borderShortDashes ${wood_jungle_h} trapdoorj3
layer trapdoorHingesBig ${stone_s} trapdoorj5
layer trapdoorHinges ${stone} trapdoorj6
stack "block/jungle_trapdoor"

layer ringsHole ${wood_mangrove} trapdoorm0
layer rings2 ${wood_mangrove_s} trapdoorm2
layer borderDotted ${wood_mangrove_h} trapdoorm3
layer trapdoorHingesBig ${stone_h} trapdoorm5
layer trapdoorHinges ${stone_s} trapdoorm6
stack "block/mangrove_trapdoor"

layer bigDiamond ${wood_acacia} trapdoora0
layer borderSolidThick ${wood_acacia} trapdoora1
layer borderSolid ${wood_acacia_h} trapdoora2
layer trapdoorHingesBig ${stone_s} trapdoora5
layer trapdoorHinges ${stone_h} trapdoora6
stack "block/acacia_trapdoor"

layer 2x2BottomRight ${wood_dark_oak_h} trapdoord0 ${wood_dark_oak}
layer 2x2TopLeft ${wood_dark_oak_s} trapdoord1
layer borderShortDashes ${wood_dark_oak} trapdoord2
layer trapdoorHingesBig ${stone_h} trapdoord6
stack "block/dark_oak_trapdoor"

# Functional wooden blocks

layer rail $wood_oak ladder1
layer railTies $wood_oak_h ladder2
stack block/ladder

layer waves ${wood_oak_h} table0 ${wood_oak}
layer craftingGrid ${wood_oak_s} table1
layer borderSolid ${wood_dark_oak} table2
layer cornersTri ${wood_oak_h} table3
stack "block/crafting_table_top"

copy block/oak_planks table_side_1
layer borderSolid ${wood_oak_h} table_side_2
layer craftingSide ${wood_dark_oak} table_side_3
stack "block/crafting_table_side"

copy block/crafting_table_side table_front_1
stack "block/crafting_table_front"

layer bookShelves ${black} shelf1 ${wood_oak}
stack "block/bookshelf"

copy block/podzol_top compost0
stack "block/composter_compost"

copy block/composter_compost compost1
layer bonemealSmallNoBorder ${bone_block_h} compost2
stack "block/composter_ready"

layer borderSolidThick ${wood_oak} compostframe0
stack "block/composter_top"

layer stripesThick ${wood_oak_s} compostSide0 ${wood_oak}
layer borderDotted ${wood_oak_h} compostSide1
stack "block/composter_side"

layer planksTopVertical ${wood_oak} compostBottom0 ${wood_oak_s}
layer borderSolidThick ${wood_oak_s} compostBottom1
layer borderSolid ${wood_oak} compostBottom2
stack "block/composter_bottom"

layer strokeTopLeftBottomRight4 ${wood_oak} jukeboxSide0 ${wood_dark_oak}
layer strokeBottomLeftTopRight4 ${wood_oak} jukeboxSide1
layer borderSolidThick ${wood_oak_h} jukeboxSide2
layer borderDotted ${wood_oak_s} jukeboxSide3
stack "block/jukebox_side"

layer borderSolidThick ${wood_oak_h} jukeboxTop0 ${wood_oak}
layer borderDotted ${wood_oak_s} jukeboxTop1
layer thirdRail ${black} jukeboxTop2
stack "block/jukebox_top"

copy block/jukebox_side noteblock1
layer note ${wood_oak_s} noteblock4
stack "block/note_block"

# S4. BLOCKS BROKEN WITH SHEARS

layer ringsCentralBullseye ${white} cobweb1
layer x ${white} cobweb2
layer cross ${white} cobweb3
stack block/cobweb

# todo: glow moss

# S7. LIQUIDS

# S80. BLOCKS BROKEN WITHOUT TOOLS

# Wool

for dye in "${DYES[@]}"; do
  layer empty "${!dye}" wool1 "${!dye}"
  layer zigzagBroken ${gray} wool2
  semitrans wool2 0.25
  layer zigzagBroken2 ${light_gray} wool3
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

# Flowers

layer flowerStemTall ${flower_stem} tallstem1
layer flowerStemTallBorder ${flower_stem_h} tallstem2
layer flowerStemBottomBorder ${flower_stem_s} tallstem3
stack block/sunflower_bottom

layer flowerStemShort ${flower_stem} shortstem1
layer flowerStemShortBorder ${flower_stem_h} shortstem2
layer flowerStemBottomBorder ${flower_stem_s} shortstem3
stack block/sunflower_top

layer sunflowerPetals ${yellow} sunflower1
layer sunflowerPistil ${black} sunflower2
stack block/sunflower_front

layer sunflowerPetals ${flower_stem} sunflowerBack1
stack block/sunflower_back

# Crops

layer bambooThick ${sugarcane_s} sugarcane1
layer bambooThin ${sugarcane_h} sugarcane2
layer bambooThinMinusBorder ${sugarcane} sugarcane3
stack block/sugar_cane

layer wart0 ${crimson_wart_s} wart0
stack block/nether_wart_stage_0

layer wart1 ${crimson_wart_s} wart1
stack block/nether_wart_stage_1

layer wart2 ${crimson_wart_s} wart2
layer wart2a ${crimson_wart_h} wart2a
stack block/nether_wart_stage_2

layer carrots0 ${veg_leaves_s} carrots0
stack block/carrots_stage0

layer carrots1 ${veg_leaves_s} carrots1
stack block/carrots_stage1

layer carrots2 ${veg_leaves_s} carrots2
stack block/carrots_stage2

layer carrots3Stems ${veg_leaves_h} carrots3a
layer rootVeg ${carrot} carrots3b
stack block/carrots_stage3

layer beets0 ${veg_leaves_s} beets0
stack block/beetroots_stage0

layer beets1 ${veg_leaves_s} beets1
stack block/beetroots_stage1

layer beets2 ${veg_leaves_s} beets2
stack block/beetroots_stage2

layer beets3Stems ${veg_leaves_h} beets3a
layer rootVeg ${beetroot} beets3b
stack block/beetroots_stage3

layer potato0 ${veg_leaves_s} potato0
stack block/potatoes_stage0

layer potato1 ${veg_leaves_s} potato1
stack block/potatoes_stage1

layer potato2 ${veg_leaves_s} potato2
stack block/potatoes_stage2

layer flowerStemShort ${veg_leaves_h} potato3
layer potato ${potato} potato3a
stack block/potatoes_stage3

for wheatStage in $(seq 0 6); do
  layer "wheat${wheatStage}" ${wheat_s} "wheat${wheatStage}layer1"
  layer "wheatTexture${wheatStage}" ${wheat} "wheat${wheatStage}layer2"
  stack "block/wheat_stage${wheatStage}"
done

layer "wheatFull" ${wheat_h} "wheatfull1"
layer "wheatTextureFull" ${wheat_s} "wheatfull2"
stack "block/wheat_stage7"

# Lily pads and leaves are biome-colored starting from gray, like grass blocks

layer lilyPad ${grass_s} pad1
layer lilyPadInterior ${grass_h} pad2
stack block/lily_pad

layer leaves1 ${grass_s} leavesa1
layer leaves1a ${grass_h} leavesa2
stack block/acacia_leaves

layer leaves2 ${grass_h} leavesb1
layer leaves2a ${grass_s} leavesb2
stack block/birch_leaves

layer leaves3 ${grass_s} leavesd1
layer leaves3a ${grass_h} leavesd2
stack block/dark_oak_leaves

layer leaves4 ${grass_s} leaveso1
layer leaves4a ${grass_h} leaveso2
stack block/oak_leaves

layer leaves5 ${grass_h} leavesm1
layer leaves5a ${grass} leavesm2
layer leaves5b ${grass_s} leavesm3
stack block/mangrove_leaves

layer leaves6 ${grass_h} leavesj1
layer leaves6a ${grass_s} leavesj2
stack block/jungle_leaves

layer leaves3 ${grass_h} leavess1
layer leaves3b ${grass_s} leavess2
stack block/spruce_leaves

# Other plants

layer bottomPart ${grass_s} tallgrassb0
layer grassTall ${grass} tallgrassb1
stack block/tall_grass_bottom

layer grassVeryShort ${grass} tallgrasst0
stack block/tall_grass_top

layer grassShort ${grass} grass0
stack block/grass

# Nether fungus wart blocks

layer leaves6 ${crimson_wart_s} cwart1 ${crimson_wart}
layer leaves6a ${crimson_wart_h} cwart2
layer borderRoundDots ${crimson_wart_h} cwart3
stack block/nether_wart_block

layer leaves3 ${warped_wart_s} wwart1 ${warped_wart}
layer leaves3a ${warped_wart_h} wwart2
layer leaves3b ${warped_wart_h} wwart3
layer borderSolid ${warped_wart_s} wwart4
layer borderShortDashes ${warped_wart_h} wwart5
stack block/warped_wart_block

# Mushrooms & fungi

layer mushroomStem $mushroom_stem mush1
layer mushroomCapRed $mushroom_red_cap mush2
stack block/red_mushroom

layer mushroomStem $mushroom_stem bmush1
layer mushroomCapBrown $mushroom_brown_cap bmush2
stack block/brown_mushroom

layer mushroomStem $bark_crimson_s cfungus1
layer mushroomCapRed $crimson_wart cfungus2
layer crimsonFungusSpots $fungus_spot cfungus3
stack block/crimson_fungus

layer mushroomStem $bark_warped_s cfungus1
layer warpedFungusCap $warped_wart cfungus2
layer warpedFungusSpots $fungus_spot cfungus3
stack block/warped_fungus

layer borderSolid ${shroomlight_h} sl0 ${shroomlight}
layer checksSmall ${shroomlight_s} sl1
layer shroomlightOn ${shroomlight_h} sl2
stack block/shroomlight

# Redstone dust

layer redstoneDot $white redstoneDot1
stack block/redstone_dust_dot

layer redstoneLine $white redstoneLine1
stack block/redstone_dust_line0

copy block/redstone_dust_line0 redstoneLine2
stack block/redstone_dust_line1

# Target

layer grassTall $target_h targetSide1 $target_s
layer ringsCentralBullseye $redstone_s targetSide2
stack block/target_side

layer checksSmall $target_h targetTop1 $target_s
layer ringsCentralBullseye $redstone_s targetTop2
stack block/target_top

# Torches

layer torchBase $wood_oak torch1
layer torchShadow $wood_oak_s torch2
layer torchFlame $black torch3
stack block/torch

layer torchBase $wood_oak storch1
layer torchShadow $wood_oak_s storch2
layer soulTorchFlame $black storch3
stack block/soul_torch

layer torchBase $wood_oak rtorch1
layer torchShadow $wood_oak_s rtorch2
layer torchRedstoneHead $black rtorch3
stack block/redstone_torch

layer torchBase $wood_oak artorch1
layer torchShadow $wood_oak_s artorch2
layer torchRedstoneHead ${redstone_h} artorch3
layer torchRedstoneHeadShadow ${redstone_s} artorch4
stack block/redstone_torch_on

# S90. UNBREAKABLE BLOCKS

layer borderSolid $bedrock_s bedrock1 $bedrock
layer borderLongDashes $bedrock_h bedrock2
layer strokeTopLeftBottomRight2 $bedrock_s bedrock3
layer strokeBottomLeftTopRight2 $bedrock_h bedrock4
stack block/bedrock

# Command blocks

for type in "${CMD_BLOCK_TYPES[@]}"; do
  shadow=${type}_s
  highlight=${type}_h

  layer diagonalChecksTopLeftBottomRight "${!shadow}" cbb1 "${!type}"
  layer diagonalChecksBottomLeftTopRight "${!highlight}" cbb2
  layer diagonalOutlineChecksTopLeftBottomRight "${!highlight}" cbb3
  layer diagonalOutlineChecksBottomLeftTopRight "${!shadow}" cbb4
  stack "block/${type}_basebase"
done

move block/command_block_basebase block/command_block_base

copy block/chain_command_block_basebase chcb1
layer commandBlockChains $black chcb2
stack block/chain_command_block_base
donewith block/chain_command_block_basebase

copy block/repeating_command_block_basebase rcb1
layer loopArrow $black rcb2
stack block/repeating_command_block_base
donewith block/repeating_command_block_basebase

for type in "${CMD_BLOCK_TYPES[@]}"; do
  shadow=${type}_s
  highlight=${type}_h

  copy "block/${type}_base" frontbase1
  layer commandBlockOctagon $black frontbase2
  layer craftingGridSpacesCross $white frontbase3
  stack "block/${type}_front_base"

  for frame in $(seq 1 4); do
    copy "block/${type}_front_base" front1
    layer "dotsInCross${frame}" $command_block_dot front2
    stack "block/${type}_front_${frame}"
  done
  donewith "block/${type}_front_base"
  animate4 "block/${type}_front"

  copy "block/${type}_base" backbase1
  layer commandBlockSquare $black backbase2
  layer craftingGridSpaces $white backbase3
  stack "block/${type}_back_base"

  for frame in $(seq 1 4); do
    copy "block/${type}_back_base" back1
    layer "glider${frame}" $command_block_dot back2
    stack "block/${type}_back_${frame}"
  done
  donewith "block/${type}_back_base"
  animate4 "block/${type}_back"

  copy "block/${type}_base" sidebase1
  layer commandBlockArrowUnconditional $black sidebase2
  layer craftingGridSpaces $white sidebase3
  stack "block/${type}_side_base"

  for frame in $(seq 1 4); do
    copy "block/${type}_side_base" front1
    layer "glider${frame}" $command_block_dot front2
    stack "block/${type}_side_${frame}"
  done
  donewith "block/${type}_side_base"
  animate4 "block/${type}_side"

  copy "block/${type}_base" condbase1
  layer commandBlockArrow $black condbase2
  layer craftingGridSpaces $white condbase3
  stack "block/${type}_conditional_base"
  donewith "block/${type}_base"

  for frame in $(seq 1 4); do
    copy "block/${type}_conditional_base" front1
    layer "glider${frame}" $command_block_dot front2
    stack "block/${type}_conditional_${frame}"
  done
  donewith "block/${type}_conditional_base"
  animate4 "block/${type}_conditional"
done

# Structure & jigsaw blocks

layer empty $structure_block_fg sb1 $structure_block_bg
layer borderDotted $structure_block_fg sb2
semitrans sb2 0.25
stack block/jigsaw_bottom

layer cornerCrosshairs $structure_block_fg sbc1 $structure_block_bg
stack block/structure_block_corner

copy block/jigsaw_bottom sbd1
layer data $structure_block_fg sbd2
stack block/structure_block_data

copy block/jigsaw_bottom sbl1
layer folderLoad $structure_block_fg sbl2
stack block/structure_block_load

copy block/jigsaw_bottom sbs1
layer folderSave $structure_block_fg sbs2
stack block/structure_block_save

copy block/jigsaw_bottom jbt1
layer jigsaw $structure_block_fg jbt2
stack block/jigsaw_top

copy block/jigsaw_bottom jbs1
layer arrowUp $structure_block_fg jbs2
stack block/jigsaw_side

copy block/jigsaw_bottom jbl1
layer jigsawLock $structure_block_fg jbl2
stack block/jigsaw_lock

# S100. ITEMS NOT USED IN BLOCK TEXTURES

# Music discs

i=0
for disc in "${NORMAL_MUSIC_DISCS[@]}"; do
  layer musicDisc ${music_disc} "disc_${disc}_1"
  layer musicDiscGroove ${music_disc_s} "disc_${disc}_2"
  layer musicDiscLabel "${!DISC_LABELS[$i]}" "disc_${disc}_3"
  stack "item/music_disc_${disc}"
  i=$((i+1))
done

layer musicDiscBroken ${music_disc_s} disc_11_1
layer musicDiscGrooveBroken ${music_disc_h} disc_11_2
stack "item/music_disc_11"

# S200. PARTICLES

layer note ${grass_h} note_1
stack "particle/note"