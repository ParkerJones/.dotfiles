#!/bin/bash

DEVICE_ID=13
xinput set-prop $DEVICE_ID "libinput Scroll Method Enabled" 0 0 1
xinput set-prop $DEVICE_ID "libinput Natural Scrolling Enabled" 1
