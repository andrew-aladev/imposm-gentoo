# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EGO_PN="github.com/omniscale/magnacarto"

inherit golang-vcs golang-build

DESCRIPTION="Magnacarto is a CartoCSS map style processor that generates Mapnik XML and MapServer map files"
HOMEPAGE="https://github.com/omniscale/magnacarto"

LICENSE="Apache-2.0"
SLOT="0/9999"
KEYWORDS=""

IUSE=""

RDEPEND="
    sci-geosciences/mapnik
"
DEPEND="${RDEPEND}"
