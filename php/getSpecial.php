<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_special WHERE sid!=0 ORDER BY sid";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>