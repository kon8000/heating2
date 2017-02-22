<html><body><h1>Heating Control</h1>
<?php

// $pageTime = date(DATE_W3C);
$pageTime = date_create_from_format(DATE_W3C, date(DATE_W3C));

echo "<p>Server Time: ";
echo date_format($pageTime, DATE_W3C);
echo ".</p>";

$temp = ;
echo "<p>Current Temps:</p> <p>$temp1</p> <p>$temp2</p> <p>$temp3</p> <p>$temp4</p>";
echo "<p></p>";
echo "<p><a href='./temp-logs.php'>Temp Logs</p>";

?>
</body></html>

