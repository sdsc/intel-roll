NAME                    = intel-compilers
VERSION                 = 2013_sp1.2.144
RELEASE                 = 0

SRC_SUBDIR              = intel-compilers

SUFFIX        = tar.gz

L_CCOMPXE_NAME          = l_ccompxe
L_CCOMPXE_VERSION       = $(VERSION)
L_CCOMPXE_SOURCE        = $(L_CCOMPXE_NAME)_$(L_CCOMPXE_VERSION)

L_FCOMPXE_NAME          = l_fcompxe
L_FCOMPXE_VERSION       = $(VERSION)
L_FCOMPXE_SOURCE        = $(L_FCOMPXE_NAME)_$(L_FCOMPXE_VERSION)

L_IPP_NAME              = l_ipp
L_IPP_VERSION           = 8.1.0.144
L_IPP_SOURCE            = $(L_IPP_NAME)_$(L_IPP_VERSION)

L_MKL_NAME              = l_mkl
L_MKL_VERSION           = 11.1.2.144
L_MKL_SOURCE            = $(L_MKL_NAME)_$(L_MKL_VERSION)

L_TBB_NAME              = l_tbb
L_TBB_VERSION           = 4.2.3.144
L_TBB_SOURCE            = $(L_TBB_NAME)_$(L_TBB_VERSION)

TAR_GZ_PKGS = $(L_CCOMPXE_SOURCE).$(SUFFIX) $(L_FCOMPXE_SOURCE).$(SUFFIX) $(L_IPP_SOURCE).$(SUFFIX) $(L_MKL_SOURCE).$(SUFFIX) $(L_TBB_SOURCE).$(SUFFIX)
