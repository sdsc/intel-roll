PACKAGE     = intel
CATEGORY    = compilers

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 13
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

EXTRA_MODULE_VERSIONS = 2015.2.164

RPM.EXTRAS  = AutoReq:No
RPM.PREFIX  = $(PKGROOT)
