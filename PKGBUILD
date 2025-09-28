# Maintainer: aetherway <aertherway@disroot.org>
pkgname=zram-dinit
pkgver=1.0
pkgrel=1
pkgdesc="Dinit service for setting up zram swap without zramen"
arch=('any')
license=('MIT')
depends=('dinit' 'util-linux')
backup=('etc/dinit.d/config/zram.conf')
source=("https://github.com/millennium-whoop/zram-dinit/releases/download/v${pkgver}/zram-dinit-${pkgver}.tar.gz")
md5sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')
sha256sums=('fcf923a63434e5571f7a98f500ecc37dc18f12f3a743132f7961210de6997703  zram-dinit-1.0-1-any.pkg.tar')

package() {
  install -Dm755 "$srcdir/init-zram.sh" "$pkgdir/usr/bin/init-zram.sh"
  install -Dm755 "$srcdir/stop-zram.sh" "$pkgdir/usr/bin/stop-zram.sh"
  install -Dm644 "$srcdir/zram" "$pkgdir/etc/dinit.d/zram"
  install -Dm644 "$srcdir/zram.conf" "$pkgdir/etc/dinit.d/config/zram.conf"
}
