#!/bin/sh

DEVICE="${ZRAM_DEVICE:-/dev/zram0}"

swapoff "$DEVICE"
modprobe -r zram
