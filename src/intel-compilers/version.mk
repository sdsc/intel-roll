NAME              = sdsc-intel-compilers
VERSION           = 2013_sp1.2.144
RELEASE           = 3
PKGROOT           = /opt/intel

SRC_SUBDIR        = intel-compilers

SOURCE_NAME       = l_ccompxe
SOURCE_SUFFIX     = tar.gz
SOURCE_VERSION    = $(VERSION)
SOURCE_PKG        = $(SOURCE_NAME)_$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR        = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

L_FCOMPXE_NAME    = l_fcompxe
L_FCOMPXE_SUFFIX  = tar.gz
L_FCOMPXE_VERSION = $(VERSION)
L_FCOMPXE_PKG     = $(L_FCOMPXE_NAME)_$(L_FCOMPXE_VERSION).$(L_FCOMPXE_SUFFIX)
L_FCOMPXE_DIR     = $(L_FCOMPXE_PKG:%.$(L_FCOMPXE_SUFFIX)=%)

TAR_GZ_PKGS       = $(SOURCE_PKG) $(L_FCOMPXE_PKG)

RPM.EXTRAS        = AutoReq:No
