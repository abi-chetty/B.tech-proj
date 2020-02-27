<?php
$file = fopen("nutrition.csv","r");

while(! feof($file))
  {
  $r = fgetcsv($file);
    echo $r[0];
    echo "</br>";
  }

fclose($file);
?>
