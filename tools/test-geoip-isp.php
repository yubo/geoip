#!/usr/bin/php
<?php
$lines = file('../test/isp_test.txt');
foreach($lines as $line){
    $isp = geoip_isp_by_name(trim($line));
    if ($isp) {
        echo 'This host '.trim($line).' is from ISP: ' . $isp."\n";
    }
}


