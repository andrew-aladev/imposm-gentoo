# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
PYTHON_COMPAT=(python2_7)

inherit distutils-r1 git-r3

DESCRIPTION="Imports OpenStreetMap data into geo databases"
HOMEPAGE="https://github.com/omniscale/imposm"
EGIT_REPO_URI=("https://github.com/omniscale/imposm.git")

LICENSE="Apache-2.0"
SLOT="0/9999"
KEYWORDS=""

IUSE=""

RDEPEND="
    dev-libs/protobuf
    dev-db/tokyocabinet
    sci-libs/Shapely
    dev-python/psycopg:2
    sci-geosciences/imposm-parser
"
DEPEND="${RDEPEND}"
