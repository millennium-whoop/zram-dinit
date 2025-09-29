#!/bin/sh

modprobe zram || { echo "Failed to load zram module" >&2; exit 1; }

echo 1 > /sys/class/zram-control/hot_add

ZRAM_DEVICE=${ZRAM_DEVICE:-/dev/zram0}
ZRAM_ALGO=${ZRAM_ALGO:-zstd}

ZRAM_NUM=$(basename "$ZRAM_DEVICE" | sed 's/zram//')

echo "$ZRAM_ALGO" > "/sys/block/zram$ZRAM_NUM/comp_algorithm"

SIZE_KB="$(($(grep -Po 'MemTotal:\s*\K\d+' /proc/meminfo)/2))"
echo "${SIZE_KB}K" > "/sys/block/zram$ZRAM_NUM/disksize"

mkswap -U clear "$ZRAM_DEVICE"
swapon --discard --priority 100 "$ZRAM_DEVICE"
