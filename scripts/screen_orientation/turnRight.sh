TouchscreenDevice='ELAN Touchscreen'
TouchpadDevice='SynPS/2 Synaptics TouchPad'
Mouse='Logitech USB Optical Mouse'
right='0 1 0 -1 0 1 0 0 1'

xrandr -o right
xinput set-prop "$TouchscreenDevice" 'Coordinate Transformation Matrix' $right
xinput set-prop "$TouchpadDevice" 'Coordinate Transformation Matrix' $right
xinput set-prop "$Mouse" 'Coordinate Transformation Matrix' $right
