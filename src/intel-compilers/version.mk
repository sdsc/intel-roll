NAME              = sdsc-intel-compilers
VERSION           = 2015.2.164
RELEASE           = 0
PKGROOT           = /opt/intel

SRC_SUBDIR        = intel-compilers

SOURCE_NAME       = l_compxe
SOURCE_SUFFIX     = tar.gz
SOURCE_VERSION    = $(VERSION)
SOURCE_PKG        = $(SOURCE_NAME)_$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR        = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)
L_MKL_VERSION     = 11.2.2.164

TAR_GZ_PKGS       = $(SOURCE_PKG) $(L_FCOMPXE_PKG)

RPM.EXTRAS        = AutoReq:No
