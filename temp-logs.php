<html><body><h1>Temp Readings</h1>
<?php

// $pageTime = date(DATE_W3C);
$pageTime = date_create_from_format(DATE_W3C, date(DATE_W3C));

echo "<p>Server Time: ";
echo date_format($pageTime, DATE_W3C);
echo ".</p>";

// $handle = fopen("/home/pi/logs/2017/02/temp20170211.log", "r");
$logFile = "/home/pi/logs/".date_format($pageTime,"Y/m/")."temp".date_format($pageTime,"Ymd").".log";
// echo "<p>".$logFile."</p>";
$handle = fopen($logFile, "r");
if ($handle) {
    while (($line = fgets($handle)) !== false) {
        // process the line read.
        echo $line;
        echo "<br>";
    }

    fclose($handle);
} else {
    // error opening the file.
}

//echo file_get_contents("/home/pi/logs/2016/12/temp20161204.log");
?>
</body></html>

