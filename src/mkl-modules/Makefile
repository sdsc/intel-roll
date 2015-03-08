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

install:: modulefile-install-no-default
install::
	# Additional replacement required for the MKL modulefile
	perl -pi -e 's/INTELVERS/$(INTELVERS)/g' $(ROOT)/$(PKGROOT)/$(VERSION)

modulefile-install-no-default:
	mkdir -p -m 755 $(ROOT)/$(PKGROOT)
	for V in $(VERSION) $(EXTRA_MODULE_VERSIONS); do \
	  cp *.module $(ROOT)/$(PKGROOT)/$$V; \
	  cp *.version $(ROOT)/$(PKGROOT)/.version.$$V; \
	  perl -pi -e 's#COMPILERNAME#$(COMPILERNAME)#g;' \
	           -e 's#MPINAME#$(MPINAME)#g;' \
	           -e 's#ROLLCOMPILER#$(ROLLCOMPILER)#g;' \
	           -e 's#ROLLMPI#$(ROLLMPI)#g;' \
	           -e 's#ROLLOPTS#$(ROLLOPTS)#g;' \
	           -e 's#ROLLPY#$(ROLLPY)#g;' \
	           -e "s#VERSION#$$V#g;" \
	    $(ROOT)/$(PKGROOT)/.version.$$V $(ROOT)/$(PKGROOT)/$$V; \
	done

clean::
	rm -f $(VERSION_INC)
