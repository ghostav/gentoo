# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="exFAT filesystem utilities"
HOMEPAGE="https://github.com/relan/exfat"
SRC_URI="https://github.com/relan/exfat/releases/download/v${PV}/${P}.tar.gz"

# COPYING is GPL-2 but ChangeLog says "Relicensed the project from GPLv3+ to GPLv2+"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc64 ~s390 ~sh ~sparc ~x86 ~arm-linux ~x86-linux"

src_install() {
	emake DESTDIR="${D}" install
	dodoc ChangeLog
	doman dump/dumpexfat.8 fsck/exfatfsck.8 label/exfatlabel.8 mkfs/mkexfatfs.8
}
