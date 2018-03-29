<?php
    require_once('init.php');
    session_start();
    $uname = $_REQUEST['uname'];
    $desct = $_REQUEST['desct'];
    $count = $_REQUEST['count'];
    $sql ="SELECT uid FROM dota_shop_user WHERE uname='$uname'";
    $res = mysqli_query($conn,$sql);
    $row1 = mysqli_fetch_row($res);
    $uid= $row1[0];
    $_SESSION['uid'] = $uid;
    $sql = " SELECT * FROM dota_shop_cart WHERE user_id = $uid AND pid = (SELECT prid FROM dota_shop_product WHERE desct = '$desct') ";
    $res = mysqli_query($conn,$sql);
    $row = mysqli_fetch_row($res);
    if($row == null){
        $sql = " INSERT INTO dota_shop_cart(user_id,pid,count,is_checked) VALUES($uid,(SELECT prid FROM dota_shop_product WHERE desct = '$desct'),$count,0)";
    }else{
        $sql = " UPDATE dota_shop_cart SET count = $count + count WHERE user_id = $uid AND pid = (SELECT prid FROM dota_shop_product WHERE desct = '$desct')";
    }
    mysqli_query($conn,$sql);
    echo '{"code" : 1, "msg" : "添加成功！"}';
?>