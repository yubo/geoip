all:
	$(MAKE) -C libGeoIP
	$(MAKE) -C test
	$(MAKE) -C tools


clean:
	$(MAKE) clean -C libGeoIP
	$(MAKE) clean -C test
	$(MAKE) clean -C tools
