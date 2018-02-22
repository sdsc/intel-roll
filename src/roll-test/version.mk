NAME       = sdsc-$(ROLLNAME)-roll-test
VERSION    = 1
RELEASE    = 8
PKGROOT    = /root/rolltests

RPM.EXTRAS = AutoReq:No
RPM.FILES  = $(PKGROOT)/$(ROLLNAME).t
