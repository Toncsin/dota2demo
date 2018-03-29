<?php
require_once("init.php");
$desct=$_REQUEST["desct"];
$sql="SELECT * FROM dota_shop_pic WHERE desct='$desct'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result,1);
if($row){
echo json_encode($row);
}
?>