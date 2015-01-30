NAME              = sdsc-intel-compilers
VERSION           = 2015.1.133
RELEASE           = 0
PKGROOT           = /opt/intel

SRC_SUBDIR        = intel-compilers

SOURCE_NAME       = l_compxe
SOURCE_SUFFIX     = tgz
SOURCE_VERSION    = $(VERSION)
SOURCE_PKG        = $(SOURCE_NAME)_$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR        = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TGZ_PKGS          = $(SOURCE_PKG)

RPM.EXTRAS        = AutoReq:No
