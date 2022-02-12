#!/bin/bash
# *****************************************************************************
# Arrange monitors when laptop lid is open
# *****************************************************************************

# Screen names:
LAPTOP="eDP-1"
LEFT="DP-2-8"
MIDDLE="DP-2-1-8"
RIGHT="DP-2-1-1-8"

# Set primary:
xrandr --output $MIDDLE --primary

# Set screen arrangement:
xrandr --output $LAPTOP --below $LEFT
xrandr --output $MIDDLE --right-of $LEFT
xrandr --output $RIGHT --right-of $MIDDLE
