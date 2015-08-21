PACKAGE     = mkl
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 7
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/intel-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

EXTRA_MODULE_VERSIONS = 2015.2.164

RPM.EXTRAS  = AutoReq:No
