INSTALL_PREFIX = /
all: install

install:
	install -d $(INSTALL_PREFIX)/etc/default
	install -d $(INSTALL_PREFIX)/etc/init.d
	install src/upnpforward  $(INSTALL_PREFIX)/etc/init.d/
	install examples/upnpforward.clean $(INSTALL_PREFIX)/etc/default/upnpforward

.PHONY: install all
