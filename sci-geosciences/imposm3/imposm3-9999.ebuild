# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EGO_PN="github.com/omniscale/imposm3"
EGO_PN_INSTALL="github.com/omniscale/imposm3/cmd/imposm3"
EGO_BUILD_FLAGS="$EGO_PN_INSTALL"

inherit golang-vcs golang-build

DESCRIPTION="Import OSM into PostGIS"
HOMEPAGE="https://github.com/omniscale/imposm3"

LICENSE="Apache-2.0"
SLOT="0/9999"
KEYWORDS=""

IUSE=""

RDEPEND="
    dev-libs/leveldb
    sci-libs/geos
    dev-go/go-protobuf
"
DEPEND="${RDEPEND}"

rename_function() {
    local old=$(declare -f $1)
    local new="$2${old#$1}"
    eval "$new"
}

rename_function src_install old_src_install

src_install() {
    old_src_install "$@"
    dobin bin/*
}
