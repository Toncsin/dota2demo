<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_clothes WHERE cid!=0 ORDER BY cid";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>