REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:

# Slight difference from other rolls since we're picking up L_MKL_VERSION,
# instead of the source package VERSION.
$(VERSION_INC): $(VERSION_SRC)
	/bin/grep 'L_MKL_VERSION.*=' $(VERSION_SRC) | sed 's/L_MKL_//' > $@
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)
	cp *.module $(ROOT)/$(PKGROOT)/$(VERSION)
	cp *.version $(ROOT)/$(PKGROOT)/.version.$(VERSION)
	perl -pi -e 's#ROLLCOMPILER#$(ROLLCOMPILER)#g;' \
	         -e 's#ROLLMPI#$(ROLLMPI)#g;' \
	         -e 's#ROLLNETWORK#$(ROLLNETWORK)#g;' \
	         -e 's#VERSION#$(VERSION)#g;' \
	  $(ROOT)/$(PKGROOT)/.version.$(VERSION) $(ROOT)/$(PKGROOT)/$(VERSION)
	ln -s $(PKGROOT)/.version.$(VERSION) $(ROOT)/$(PKGROOT)/.version
	# Additional replacement required for the MKL modulefile
	perl -pi -e 's/INTELVERS/$(INTELVERS)/g' $(ROOT)/$(PKGROOT)/$(VERSION)

clean::
	rm -f $(VERSION_INC)
