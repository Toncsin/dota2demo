<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_masterpieces WHERE mid!=0 ORDER BY mid";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>