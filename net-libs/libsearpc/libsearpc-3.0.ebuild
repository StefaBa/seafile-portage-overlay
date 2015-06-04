# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Created by Martin Kupec

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7} )
PYTHON_REQ_USE="sqlite(+)"

inherit autotools-utils python-single-r1


DESCRIPTION="RPC library for Seafile"
HOMEPAGE="http://www.seafile.com"
SRC_URI="https://github.com/haiwen/${PN}/archive/v${PV}-latest.tar.gz"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~x86 ~amd64"

RDEPEND="${PYTHON_DEPS}
	>=dev-libs/glib-2.26
	>=dev-libs/jansson-2.2.1
	virtual/pkgconfig"
DEPEND="${RDEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

AUTOTOOLS_AUTORECONF=1

PATCHES=(
	"${FILESDIR}"/libsearpc.pc.patch
)

S="${WORKDIR}/${P}-latest"
