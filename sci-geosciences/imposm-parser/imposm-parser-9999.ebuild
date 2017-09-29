# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
PYTHON_COMPAT=(python2_7)

inherit distutils-r1 git-r3

DESCRIPTION="Python parser for OpenStreetMap data"
HOMEPAGE="https://github.com/omniscale/imposm-parser"
EGIT_REPO_URI=("https://github.com/omniscale/imposm-parser.git")

LICENSE="Apache-2.0"
SLOT="0/9999"
KEYWORDS=""

IUSE=""

RDEPEND="dev-libs/protobuf"
DEPEND="${RDEPEND}"
