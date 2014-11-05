REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

build:

install:: typical-roll-test-install
	-mv $(ROOT)/$(PKGROOT)/*.t $(ROOT)/$(PKGROOT)/$(ROLLNAME).t

clean::
