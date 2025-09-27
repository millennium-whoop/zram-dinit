#!/bin/sh

modprobe zram
SIZE="$(($(grep -Po 'MemTotal:\s*\K\d+' /proc/meminfo)/2))KiB"
zramctl "${ZRAM_DEVICE:-/dev/zram0}" --algorithm "${ZRAM_ALGO:-zstd}" --size "$SIZE"
mkswap -U clear "${ZRAM_DEVICE:-/dev/zram0}"
swapon --discard --priority 100 "${ZRAM_DEVICE:-/dev/zram0}"
