# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A tool for checking constructive proofs"
HOMEPAGE="http://www.cse.chalmers.se/~abela/tutch/"
SRC_URI="http://www.cse.chalmers.se/~abela/tutch/tutch-0.53-for-sml-110.45.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="amd64"

DEPEND="=dev-lang/smlnj-110*"
RDEPEND=${DEPEND}

src_prepare() {
	sed -i 's|`pwd`|'"/usr/lib/tutch|" Makefile
	default
}

src_install() {
	insinto /usr/lib/tutch/bin/.heap/
	doins bin/.heap/tutch.x86-linux
	dobin bin/tutch
}
