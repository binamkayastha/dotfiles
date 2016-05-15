TouchscreenDevice='ELAN Touchscreen'
TouchpadDevice='SynPS/2 Synaptics TouchPad'
Mouse='Logitech USB Optical Mouse'
normal='1 0 0 0 1 0 0 0 1'

xrandr -o normal
xinput set-prop "$TouchscreenDevice" 'Coordinate Transformation Matrix' $normal
xinput set-prop "$TouchpadDevice" 'Coordinate Transformation Matrix' $normal
xinput set-prop "$Mouse" 'Coordinate Transformation Matrix' $normal
