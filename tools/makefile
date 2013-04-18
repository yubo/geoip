all: geoip-generator

geoip-generator: geoip-csv-to-dat.cpp
	g++ geoip-csv-to-dat.cpp -o geoip-generator -lGeoIP \
	        -I ../libGeoIP -L ../libGeoIP

clean:
	rm -f geoip-generator
