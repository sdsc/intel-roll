NAME                    = intel-compilers
VERSION                 = 2013.1.117
RELEASE                 = 9

SRC_SUBDIR              = intel-compilers

L_CCOMPXE_NAME          = l_ccompxe
L_CCOMPXE_VERSION       = $(VERSION)
L_CCOMPXE_RELEASE       = $(RELEASE)
L_CCOMPXE_SUFFIX        = tgz

L_CCOMPXE_SOURCE       = $(L_CCOMPXE_NAME)_$(L_CCOMPXE_VERSION).$(L_CCOMPXE_SUFFIX)

L_FCOMPXE_NAME          = l_fcompxe
L_FCOMPXE_VERSION       = $(VERSION)
L_FCOMPXE_RELEASE       = $(RELEASE)
L_FCOMPXE_SUFFIX        = tgz

L_FCOMPXE_SOURCE       = $(L_FCOMPXE_NAME)_$(L_FCOMPXE_VERSION).$(L_FCOMPXE_SUFFIX)

TGZ_PKGS = $(L_CCOMPXE_SOURCE) $(L_FCOMPXE_SOURCE)
