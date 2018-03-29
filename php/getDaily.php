<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_daily WHERE did!=0 ORDER BY did";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>