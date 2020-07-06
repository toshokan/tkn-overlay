# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Implementation of the olm and megolm cryptographic ratchets"
HOMEPAGE="https://gitlab.matrix.org/matrix-org/olm"
SRC_URI="
	https://gitlab.matrix.org/matrix-org/olm/-/archive/3.1.5/olm-3.1.5.tar.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	default_src_install
	mv ${D}/usr/local/* ${D}/usr/
	mv ${D}/usr/lib ${D}/usr/lib64
	rm -r ${D}/usr/local
}
