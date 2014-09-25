NAME        = mkl-modules
RELEASE     = 2
PKGROOT     = /opt/modulefiles/applications/mkl

VERSION_SRC = $(REDHAT.ROOT)/src/intel-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

INTELVERS   = 2013_sp1.2.144

RPM.EXTRAS  = AutoReq:No
