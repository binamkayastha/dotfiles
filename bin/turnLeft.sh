TouchscreenDevice='ELAN Touchscreen'
TouchpadDevice='SynPS/2 Synaptics TouchPad'
Mouse='Logitech USB Optical Mouse'
left='0 -1 1 1 0 0 0 0 1'

xrandr -o left
xinput set-prop "$TouchscreenDevice" 'Coordinate Transformation Matrix' $left
xinput set-prop "$TouchpadDevice" 'Coordinate Transformation Matrix' $left
xinput set-prop "$Mouse" 'Coordinate Transformation Matrix' $left
