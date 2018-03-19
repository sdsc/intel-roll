NAME       = sdsc-$(ROLLNAME)-roll-test
VERSION    = 1
RELEASE    = 9
PKGROOT    = /root/rolltests

RPM.EXTRAS = AutoReq:No\nAutoProv:No
RPM.FILES  = $(PKGROOT)/$(ROLLNAME).t
