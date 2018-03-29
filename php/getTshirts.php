<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_tshirts WHERE tid!=0 ORDER BY tid";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>