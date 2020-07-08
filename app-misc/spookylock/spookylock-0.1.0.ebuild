# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

CRATES="
aho-corasick-0.7.6
ansi_term-0.11.0
arc-swap-0.4.4
array-macro-1.0.4
atty-0.2.13
autocfg-0.1.7
autocfg-1.0.0
bindgen-0.52.0
bitflags-1.2.1
byteorder-1.3.2
cc-1.0.48
cexpr-0.3.6
cfg-if-0.1.10
chrono-0.4.10
clang-sys-0.28.1
clap-2.33.0
clap-3.0.0-beta.1
clap_derive-3.0.0-beta.1
crossbeam-channel-0.3.9
crossbeam-utils-0.6.6
cursive-0.13.0
darling-0.10.2
darling_core-0.10.2
darling_macro-0.10.2
enum-map-0.6.2
enum-map-derive-0.4.3
enumset-0.4.4
enumset_derive-0.4.3
env_logger-0.7.1
fnv-1.0.6
glob-0.3.0
hashbrown-0.5.0
heck-0.3.1
humantime-1.3.0
ident_case-1.0.1
indexmap-1.4.0
lazy_static-1.4.0
lazycell-1.2.1
libc-0.2.66
libloading-0.5.2
log-0.4.8
memchr-2.2.1
nom-4.2.3
num-0.2.0
num-complex-0.2.3
num-integer-0.1.41
num-iter-0.1.39
num-rational-0.2.2
num-traits-0.2.10
numtoa-0.1.0
os_str_bytes-2.3.1
owning_ref-0.4.0
pam-0.7.0
pam-sys-0.5.6
peeking_take_while-0.1.2
proc-macro-error-0.4.12
proc-macro-error-attr-0.4.12
proc-macro2-1.0.6
quick-error-1.2.2
quote-1.0.2
redox_syscall-0.1.56
redox_termios-0.1.1
regex-1.3.1
regex-syntax-0.6.12
rustc-hash-1.0.1
serde-1.0.104
shlex-0.1.1
signal-hook-0.1.12
signal-hook-registry-1.2.0
stable_deref_trait-1.1.1
strsim-0.8.0
strsim-0.9.3
strsim-0.10.0
syn-1.0.11
syn-mid-0.5.0
termcolor-1.1.0
termion-1.5.4
textwrap-0.11.0
thread_local-0.3.6
time-0.1.42
toml-0.5.5
unicode-segmentation-1.6.0
unicode-width-0.1.7
unicode-xid-0.2.0
users-0.8.1
vec_map-0.8.1
version_check-0.1.5
version_check-0.9.2
which-3.1.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
xi-unicode-0.2.0
"

DESCRIPTION="A simple but secure screen locker"
HOMEPAGE="https://github.com/toshokan/spookylock"
SRC_URI="
	https://github.com/toshokan/spookylock/archive/${PV}.tar.gz
	$(cargo_crate_uris ${CRATES})
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	dobin target/release/spookylock
	dobin target/release/spookylock-interface
	fperms +s /usr/bin/spookylock
}
