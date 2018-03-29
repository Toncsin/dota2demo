<?php
    require_once('init.php');
    session_start();
    @$uid = $_SESSION['uid'];        /*$_SESSION['uid'];*/
    $sql = " select desct,price,pic,ctime,pid,count from dota_shop_product inner join dota_shop_cart on pid=prid where user_id=$uid ";
    $res = mysqli_query($conn,$sql);
    echo json_encode(mysqli_fetch_all($res,1));
?>