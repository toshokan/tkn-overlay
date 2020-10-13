# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN=${PN%-bin}
MY_PV="$(ver_cut 1)-$(ver_cut 2)-$(ver_cut 3)"

DESCRIPTION="An experimental Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/"
SRC_URI="
	https://github.com/rust-analyzer/rust-analyzer/releases/download/${MY_PV}/${MY_PN}-linux -> ${MY_PN}-${MY_PV}
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="strip"

S=${WORKDIR}
QA_PRESTRIPPED="*"
QA_PREBUILT="*"

src_unpack() {
	return
}

src_configure() {
	return
}

src_compile() {
	cp ${DISTDIR}/${MY_PN}-${MY_PV} ${MY_PN}
}

src_install() {
	dobin ${MY_PN}
}
