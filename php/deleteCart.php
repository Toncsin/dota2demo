<?php
    require_once('init.php');
    session_start();
    $uid = $_SESSION["uid"];
    @$pid = $_REQUEST['pid'];
    $sql = " DELETE FROM dota_shop_cart WHERE pid = $pid AND user_id = $uid ";
    $res = mysqli_query($conn,$sql);
    echo '{"code" : 1, "msg" : "删除成功！"}';
?>