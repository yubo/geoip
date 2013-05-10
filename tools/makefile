all: geoip-generator geoip-isp

geoip-generator: geoip-csv-to-dat.cpp
	g++ geoip-csv-to-dat.cpp -o geoip-generator -lGeoIP \
	        -I ../libGeoIP -L ../libGeoIP

geoip-isp: geoip-isp-csv-to-data.cpp
	g++ -g geoip-isp-csv-to-data.cpp -o geoip-isp -lGeoIP \
	        -I ../libGeoIP -L ../libGeoIP
clean:
	rm -f geoip-generator  geoip-isp

ip:
	./geoip-generator -o geoip.dat -i 'yubo@xiaomi.com' GeoIPCountryWhois.csv

isp: geoip-isp
	./geoip-isp -o geoisp.dat -i 'yubo@xiaomi.com' GeoIPISP.csv
