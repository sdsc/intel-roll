REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

build:

# Slight difference from other rolls since we're picking up L_MKL_VERSION,
# instead of the source package VERSION.
$(VERSION_INC): $(VERSION_SRC)
	/bin/grep 'L_MKL_VERSION.*=' $(VERSION_SRC) | sed 's/L_MKL_//' > $@
	/bin/grep '\<VERSION.*=' $(VERSION_SRC) | sed 's/VERSION/INTELVERS/' >> $@

install:: typical-modulefile-install
install::
	# Additional replacement required for the MKL modulefile
	perl -pi -e 's/INTELVERS/$(INTELVERS)/g' $(ROOT)/$(PKGROOT)/$(VERSION)

clean::
	rm -f $(VERSION_INC)
