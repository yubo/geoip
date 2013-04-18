all:
	$(MAKE) -C libGeoIP
	$(MAKE) -C test
	$(MAKE) -C tools


clean:
	find . -name \*.o -o -name \*.a | xargs rm -f
	rm -f test/test-geoip-isp
