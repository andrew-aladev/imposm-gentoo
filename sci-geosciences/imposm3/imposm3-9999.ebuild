# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EGO_PN="github.com/omniscale/imposm3"
EGO_PN_INSTALL="github.com/omniscale/imposm3/cmd/imposm3"

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

golang-build_src_install() {
    debug-print-function ${FUNCNAME} "$@"

    ego_pn_check
    set -- env GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
        go install -v -work -x ${EGO_BUILD_FLAGS} "${EGO_PN_INSTALL}"
    echo "$@"
    "$@" || die
    golang_install_pkgs

    dobin bin/*
}
