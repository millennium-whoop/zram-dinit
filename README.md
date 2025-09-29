# zram-dinit

A simple Dinit service to enable ZRAM swap.

## Why Use zram?

zram creates a compressed block of memory that acts like swap or a temporary drive. Instead of writing less-used data to your slower SSD or hard drive, the system compresses it and keeps it in RAM. This gives you more effective memory, keeps things faster, and reduces disk wear.

### When to Use It:

- Systems with 2–8 GB RAM – Helps keep your system responsive under load by compressing memory instead of using slow disk swap
- SSD-based systems – Reduces swap-related disk writes, helping to extend the lifespan of your SSD
- Systems without a swap partition – Easy way to add swap-like functionality without touching your disk
- Embedded devices and containers – Saves memory and improves performance in resource-constrained environments

## Features

- Configurable ZRAM size and algorithm
- Automatically sets up ZRAM swap at boot
- Easy to start, stop, or disable with `dinitctl`

## Installation

Build from AUR:

    git clone https://aur.archlinux.org/zram-dinit.git
    cd zram-dinit
    makepkg -si

## Usage

Enable the ZRAM service:

    sudo dinitctl enable zram

Start the service immediately:

    sudo dinitctl start zram

Stop the service:

    sudo dinitctl stop zram

Disable it at boot:

    sudo dinitctl disable zram

## Verify ZRAM

Check ZRAM devices and usage:

    swapon --show
    cat /sys/block/zram0/comp_algorithm
    cat /sys/block/zram0/disksize

## Configuration

Optional configuration file:

    /etc/dinit.d/config/zram.conf

Adjust size, algorithm, or other options as needed.

## License

MIT License
