TouchscreenDevice='ELAN Touchscreen'
TouchpadDevice='SynPS/2 Synaptics TouchPad'
Mouse='Logitech USB Optical Mouse'
inverted='-1 0 1 0 -1 1 0 0 1'

xrandr -o inverted
xinput set-prop "$TouchscreenDevice" 'Coordinate Transformation Matrix' $inverted
xinput set-prop "$TouchpadDevice" 'Coordinate Transformation Matrix' $inverted
xinput set-prop "$Mouse" 'Coordinate Transformation Matrix' $inverted
