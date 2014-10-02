PACKAGE     = mkl
CATEGORY    = applications

NAME        = $(PACKAGE)-modules
RELEASE     = 3
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/intel-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

INTELVERS   = 2013_sp1.2.144

RPM.EXTRAS  = AutoReq:No
