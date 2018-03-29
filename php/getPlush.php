<?php
require_once("init.php");
$sql="SELECT * FROM dota_shop_plush WHERE pid!=0 ORDER BY pid";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));
?>