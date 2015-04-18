PREFIX = ./debian/tmp
all: install_bin

install_bin:
	install -d $(PREFIX)/etc/init.d
	install src/upnpforward  $(PREFIX)/etc/init.d/
install_cfg: 
	install -d $(PREFIX)/etc/default
	install examples/upnpforward.clean $(PREFIX)/etc/default/upnpforward
install: install_bin install_cfg

.PHONY: install install_bin install_cfg all
