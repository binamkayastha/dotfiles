#!/bin/bash
cd ~/.i3
IMAGE=/tmp/i3lock.png
 
# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x4" # 4.39s
#BLURTYPE="5x3" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

scrot -d 1 -q 50 /tmp/i3lock.png
i3lock -i $IMAGE &
convert $IMAGE -level 0%,100%,0.6 -blur 0x6 - | composite -gravity center saved.png - $IMAGE
killall i3lock
i3lock -i $IMAGE
#i3lock --textcolor=ffffff00 --insidecolor=ffffff1c --ringcolor=ffffff9a --linecolor=ffffff00 --keyhlcolor=00000080 --ringvercolor=00000000 --insidevercolor=0000001c --ringwrongcolor=00000055 --insidewrongcolor=0000001c  -i $IMAGE
