# zram-dinit

A simple Dinit service to enable ZRAM swap on Artix Linux.

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

    sudo zramctl

You should see your `/dev/zram0` (or `/dev/zram1`) listed as `[SWAP]`.

## Configuration

Optional configuration file:

    /etc/dinit.d/config/zram.conf

Adjust size, algorithm, or other options as needed.

## License

MIT License
