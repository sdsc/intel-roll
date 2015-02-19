PACKAGE     = intel
CATEGORY    = compilers

NAME        = sdsc-$(PACKAGE)-modules
RELEASE     = 10
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
