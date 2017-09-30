# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
EGO_PN="github.com/omniscale/magnacarto"
EGO_SRC="src/$EGO_PN"

inherit golang-vcs golang-build

DESCRIPTION="Magnacarto is a CartoCSS map style processor that generates Mapnik XML and MapServer map files"
HOMEPAGE="https://github.com/omniscale/magnacarto"

LICENSE="Apache-2.0"
SLOT="0/9999"
KEYWORDS=""

IUSE="test"

RDEPEND="
    sci-geosciences/mapnik
    test? ( net-libs/nodejs )
"
DEPEND="${RDEPEND}"

export GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)"

rename_function() {
    local old=$(declare -f $1)
    local new="$2${old#$1}"
    eval "$new"
}

rename_function src_compile old_src_compile

src_compile() {
    old_src_compile "$@"

    emake -C "$EGO_SRC" build
}

rename_function src_install old_src_install

src_install() {
    old_src_install "$@"

    emake -C "$EGO_SRC" install
    dobin bin/*
}

src_test() {
    which carto || die "please install carto with npm"
    emake -C "$EGO_SRC" test test-full
}
