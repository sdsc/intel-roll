NAME              = intel-compilers
VERSION           = 2015.0.090
RELEASE           = 0
PKGROOT           = /opt/intel

SRC_SUBDIR        = intel-compilers

SOURCE_NAME       = l_ccompxe
SOURCE_SUFFIX     = tgz
SOURCE_VERSION    = $(VERSION)
SOURCE_PKG        = $(SOURCE_NAME)_$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR        = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

L_FCOMPXE_NAME    = l_fcompxe
L_FCOMPXE_SUFFIX  = tgz
L_FCOMPXE_VERSION = $(VERSION)
L_FCOMPXE_PKG     = $(L_FCOMPXE_NAME)_$(L_FCOMPXE_VERSION).$(L_FCOMPXE_SUFFIX)
L_FCOMPXE_DIR     = $(L_FCOMPXE_PKG:%.$(L_FCOMPXE_SUFFIX)=%)

L_IPP_NAME        = l_ipp
L_IPP_SUFFIX      = tgz
L_IPP_VERSION     = 8.2.0.090
L_IPP_PKG         = $(L_IPP_NAME)_$(L_IPP_VERSION).$(L_IPP_SUFFIX)
L_IPP_DIR         = $(L_IPP_PKG:%.$(L_IPP_SUFFIX)=%)

L_MKL_NAME        = l_mkl
L_MKL_SUFFIX      = tgz
L_MKL_VERSION     = 11.2.0.090
L_MKL_PKG         = $(L_MKL_NAME)_$(L_MKL_VERSION).$(L_MKL_SUFFIX)
L_MKL_DIR         = $(L_MKL_PKG:%.$(L_MKL_SUFFIX)=%)

L_TBB_NAME        = l_tbb
L_TBB_SUFFIX      = tgz
L_TBB_VERSION     = 4.3.0.090
L_TBB_PKG         = $(L_TBB_NAME)_$(L_TBB_VERSION).$(L_TBB_SUFFIX)
L_TBB_DIR         = $(L_TBB_PKG:%.$(L_TBB_SUFFIX)=%)

TGZ_PKGS = $(SOURCE_PKG) $(L_FCOMPXE_PKG) $(L_IPP_PKG) $(L_MKL_PKG) $(L_TBB_PKG)

RPM.EXTRAS        = AutoReq:No
