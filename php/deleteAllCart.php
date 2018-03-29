<?php
    require_once('init.php');
    session_start();
    $uid =  $_SESSION["uid"];
    $pid = $_POST['pid'];
    //$pid = [22,33,25];
    foreach($pid as $p){
        $sql = " DELETE FROM dota_shop_cart WHERE pid = $p AND user_id = $uid ";
        $res = mysqli_query($conn,$sql);
    }
    echo '{"code" : 1, "msg" : "删除成功！"}';
?>