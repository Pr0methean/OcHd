#!/bin/bash
SIZE=$1
WOODS=('ACACIA' 'BIRCH' 'CRIMSON' 'DARK_OAK' 'JUNGLE' 'OAK' 'SPRUCE' 'WARPED')

# COLOR CONSTANTS
# H = highlight, S = shadow

# Dye
BLACK='#000000'
RED='#B00000'
GREEN='#007C00'
BROWN='#835400'
BLUE='#0000AA'
PURPLE='#8900B8'
CYAN='#009C9C'
LIGHT_GRAY='#9D9D9D'
GRAY='#4F4F4F'
PINK='#FF9A9A'
LIME='#80FF00'
YELLOW='#FFFF00'
LIGHT_BLUE='#7777FF'
MAGENTA='#FF4EFF'
ORANGE='#FF8000'
WHITE='#ffffff'

# Wood
WOOD_ACACIA_H='#c26d3f'
WOOD_ACACIA='#ad5d32'
WOOD_ACACIA_S='#8f4c2a'
WOOD_BIRCH_H='#d7cb8d'
WOOD_BIRCH='#c8b77a'
WOOD_BIRCH_S='#9e8b61'
WOOD_CRIMSON_H='#863e5a'
WOOD_CRIMSON='#6a344b'
WOOD_CRIMSON_S='#4b2737'
WOOD_DARK_OAK_H='#53381a'
WOOD_DARK_OAK='#3e2912'
WOOD_DARK_OAK_S='#3a2411'
WOOD_JUNGLE_H='#bf8e6b'
WOOD_JUNGLE='#9f714a'
WOOD_JUNGLE_S='#785437'
WOOD_OAK_H='#c29d62'
WOOD_OAK='#af8f55'
WOOD_OAK_S='#7e6237'
WOOD_SPRUCE_H='#886539'
WOOD_SPRUCE='#70522e'
WOOD_SPRUCE_S='#5a4424'
WOOD_WARPED_H='#3a8e8c'
WOOD_WARPED='#287067'
WOOD_WARPED_S='#1e4340'

# Earth - Overworld
STONE_HH='#b5b5b5'
STONE_H='#a6a6a6'
STONE='#888888'
STONE_S='#6d6d6d'
STONE_SS='#525252'
SAND_H='#edebcb'
SAND='#dfd5aa' # Compromise between dacfa3 & e3dbb0
SAND_S='#d1ba8a'
GRAVEL_H='#aeaeae'
GRAVEL='#7f7f7f'
GRAVEL_S='#5f5f5f'
CLAY_H='#afb9d6'
CLAY='#9aa3b3'
CLAY_S='#9499a4'
DIRT_H='#b9855c'
DIRT='#966c4a'
DIRT_S='#593d29'
# Grass is a gray texture modified by a colormap according to the biome.
GRASS_HH='#c3c3c3'
GRASS_H='#bababa'
GRASS='#9d9d9d'
GRASS_S='#828282'
GRASS_SS='#757575'
PODZOL_H='#8b5920'
PODZOL='#6a4418'
PODZOL_S='#4a3018'
MYCELIUM_H='#7b6d73'
MYCELIUM='#6a656a'
MYCELIUM_S='#5a5952'
DEEPSLATE_H='#797979'
DEEPSLATE='#515151'
DEEPSLATE_S='#2f2f37'
TERRACOTTA='#965d43'
BEDROCK_H='#979797'
BEDROCK='#575757'
BEDROCK_S='#222222'

# Mushrooms
MUSHROOM_BROWN_CAP_H='#9c795a'
MUSHROOM_BROWN_CAP='#977251'
MUSHROOM_BROWN_CAP_S='#8d6850'
MUSHROOM_RED_CAP='#ff0000'
MUSHROOM_STEM_H='#d3ccc4'
MUSHROOM_STEM='#c7c1b4'
MUSHROOM_STEM_S='#c2bcac'

layer () {
  sed -e "s/#000000/$2/" "svg/$1.svg" > "$TMPDIR/recolor.svg"
  inkscape -w "$SIZE" -h "$SIZE" "$TMPDIR/recolor.svg" -o "$TMPDIR/$3.png"  ${@:4:999}
}

stack () {
  magick "$TMPDIR"/*.png -layers flatten "$OUTDIR/$1.png"
  find "$TMPDIR" -name '*.png' | xargs rm
}

copy () {
  cp "$OUTDIR/$1.png" "$TMPDIR/$2.png"
}

declare -i DENSITY=$SIZE*72
TMPDIR="tmp/${SIZE}x${SIZE}"
OUTDIR="out/${SIZE}x${SIZE}"
rm -rf $OUTDIR || true
mkdir -p $OUTDIR
rm -rf "$TMPDIR" || true
mkdir -p "$TMPDIR"
cp -r metadata $OUTDIR

layer dots2 $GRASS_H grass1 -b $GRASS
layer dots1 $GRASS_S grass2
stack grass_block_top

layer checksSmall $STONE_H stone1 -b $STONE_S
stack stone

copy stone sb1
layer bricks $STONE_SS sb2
stack stone_bricks

layer checksLarge $STONE_H stone1 -b $STONE_S
stack cobblestone
