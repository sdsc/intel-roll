NAME        = intel-modules
RELEASE     = 5
PKGROOT     = /opt/modulefiles/compilers/intel

VERSION_SRC = $(REDHAT.ROOT)/src/intel-compilers/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
