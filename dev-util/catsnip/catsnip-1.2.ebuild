# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="catsnip is a tiny utility that extracts sections of text files"
SRC_URI="https://codeberg.org/Magdalunaa/catsnip/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="CC0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-lang/lua
dev-lua/luafilesystem"

RDEPEND="${DEPEND}"

src_install() {
    newbin catsnip.lua catsnip
    dodoc docs.md
}
