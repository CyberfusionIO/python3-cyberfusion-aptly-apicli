PREFIX=$(CURDIR)/debian/

install: python3-cyberfusion-aptly-apicli

python3-cyberfusion-aptly-apicli: PKGNAME	:= python3-cyberfusion-aptly-apicli
python3-cyberfusion-aptly-apicli: PKGPREFIX	:= $(PREFIX)/$(PKGNAME)
python3-cyberfusion-aptly-apicli: SDIR		:= python

python3-cyberfusion-aptly-apicli:
	rm -rf $(CURDIR)/build
	python3 setup.py install --force --root=$(PKGPREFIX) --no-compile -O0 --install-layout=deb
	mkdir -p $(PKGPREFIX)/etc/cyberfusion/

clean:
	rm -rf $(PREFIX)/python3-cyberfusion-aptly-apicli/
	rm -rf $(PREFIX)/*debhelper*
	rm -rf $(PREFIX)/*substvars
	rm -rf $(PREFIX)/files
	rm -rf $(CURDIR)/build
	rm -rf $(CURDIR)/src/*.egg-info
