NAME          = sdsc-intel-libraries
VERSION       = 2013_sp1.2.144
RELEASE       = 1
PKGROOT       = /opt/intel

SRC_SUBDIR    = intel-libraries

L_IPP_NAME    = l_ipp
L_IPP_SUFFIX  = tar.gz
L_IPP_VERSION = 8.1.0.144
L_IPP_PKG     = $(L_IPP_NAME)_$(L_IPP_VERSION).$(L_IPP_SUFFIX)
L_IPP_DIR     = $(L_IPP_PKG:%.$(L_IPP_SUFFIX)=%)

L_MKL_NAME    = l_mkl
L_MKL_SUFFIX  = tar.gz
L_MKL_VERSION = 11.1.2.144
L_MKL_PKG     = $(L_MKL_NAME)_$(L_MKL_VERSION).$(L_MKL_SUFFIX)
L_MKL_DIR     = $(L_MKL_PKG:%.$(L_MKL_SUFFIX)=%)

L_TBB_NAME    = l_tbb
L_TBB_SUFFIX  = tar.gz
L_TBB_VERSION = 4.2.3.144
L_TBB_PKG     = $(L_TBB_NAME)_$(L_TBB_VERSION).$(L_TBB_SUFFIX)
L_TBB_DIR     = $(L_TBB_PKG:%.$(L_TBB_SUFFIX)=%)

TAR_GZ_PKGS   = $(L_IPP_PKG) $(L_MKL_PKG) $(L_TBB_PKG)

RPM.EXTRAS    = AutoReq:No
