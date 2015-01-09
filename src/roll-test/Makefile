REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

build:

install:: typical-roll-test-install
	perl -pi -e 's#ROLLNAME#$(ROLLNAME)#' $(ROOT)/$(PKGROOT)/*.t
	-mv $(ROOT)/$(PKGROOT)/*.t $(ROOT)/$(PKGROOT)/$(ROLLNAME).t

clean::
