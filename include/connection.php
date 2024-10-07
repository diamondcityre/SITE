<?php
//$conn = new mysqli("localhost","diamonddev","2+G33@r?mTb.","diamondcityre");
//$conn = new mysqli("localhost","crowfdid_dcre","DCRE@3028","crowfdid_diamond_city");
 $conn = new mysqli("localhost","diamckng_admin","DCRE@@3028","diamckng_dcre");
//$conn = new mysqli("localhost","root","root","crowfdid_diamond_city");

// Check connection
if ($conn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $conn -> connect_error;
  exit();
}
else{
    echo "";
}


?>
