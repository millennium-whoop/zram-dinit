# Maintainer: aetherway <aertherway@disroot.org>
pkgname=zram-dinit
pkgver=1.0
pkgrel=1
pkgdesc="Dinit service for setting up zram swap without zramen"
arch=('any')
license=('MIT')
depends=('dinit' 'util-linux')
backup=('etc/dinit.d/config/zram.conf')
source=('zram' 'init-zram.sh' 'stop-zram.sh' 'zram.conf')
md5sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')  # Or use `updpkgsums`

package() {
  install -Dm755 "$srcdir/init-zram.sh" "$pkgdir/usr/bin/init-zram.sh"
  install -Dm755 "$srcdir/stop-zram.sh" "$pkgdir/usr/bin/stop-zram.sh"
  install -Dm644 "$srcdir/zram" "$pkgdir/etc/dinit.d/zram"
  install -Dm644 "$srcdir/zram.conf" "$pkgdir/etc/dinit.d/config/zram.conf"
}
