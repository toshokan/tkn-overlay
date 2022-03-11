# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN=${PN%-bin}

DESCRIPTION="Free/Libre Open Source Software Binaries of VSCode"
HOMEPAGE="https://vscodium.com/"
SRC_URI="
	amd64? ( https://github.com/VSCodium/${MY_PN}/releases/download/${PV}/VSCodium-linux-x64-${PV}.tar.gz )
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="strip"

S=${WORKDIR}
QA_PRESTRIPPED="*"
QA_PREBUILT="*"

src_configure() {
	return
}

src_install() {
	dodir /opt/${MY_PN}
	cp -r . ${ED%/}/opt/${MY_PN}/
	dosym ../../opt/${MY_PN}/bin/codium /usr/bin/${MY_PN}
}
