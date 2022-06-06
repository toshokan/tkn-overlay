# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN=${PN%-bin}
MY_PV="$(ver_cut 1)-$(ver_cut 2)-$(ver_cut 3)"

DESCRIPTION="An experimental Rust compiler front-end for IDEs"
HOMEPAGE="https://rust-analyzer.github.io/"
SRC_URI="
	https://github.com/rust-analyzer/rust-analyzer/releases/download/${MY_PV}/${MY_PN}-x86_64-unknown-linux-gnu.gz -> ${P}.gz
"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="strip"

S=${WORKDIR}
QA_PRESTRIPPED="*"
QA_PREBUILT="*"

src_configure() {
	return
}

src_compile() {
	cp ${DISTDIR}/${P} ${MY_PN}
}

src_install() {
	dobin ${MY_PN}
}
