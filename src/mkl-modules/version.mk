PACKAGE     = mkl
CATEGORY    = applications

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 7
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/intel-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

VERSION2_SRC = $(REDHAT.ROOT)/src/intel-compilers-2015/version.mk
VERSION2_INC = version2.inc
include $(VERSION2_INC)

EXTRA_MODULE_VERSIONS = 11.2.2.164

RPM.EXTRAS  = AutoReq:No
