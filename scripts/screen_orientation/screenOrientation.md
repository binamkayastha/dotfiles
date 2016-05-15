# Screen Orientation Scripts
Used in order to change the screen orientation and map the mouse,
touchscreen, and trackpad to match the screen orientation.
I put these scripts into the ~/bin folder so that it could be
accessed by the i3 and sxhkd config files.

# For i3, in i3 config file (feel free to change ):
    bindsym Mod1+Control+Up     exec --no-startup-id turnUp.sh
    bindsym Mod1+Control+Down   exec --no-startup-id turnDown.sh
    bindsym Mod1+Control+Left   exec --no-startup-id turnLeft.sh
    bindsym Mod1+Control+Right  exec --no-startup-id turnRight.sh

# For bspwm, if you're using sxhkd as your keymapping
    ctrl + alt + {Up,Down,Left,Right}
        turn{Up,Down,Left,Right}.sh

# Todo
- [ ] Remember where I got the base code from and give credits
- [ ] Combine into one file
