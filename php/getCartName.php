<?php
    require_once("init.php");
    session_start();
    $uid = $_SESSION['uid'];

    $sql = " SELECT uname FROM dota_shop_user WHERE uid = $uid ";
    $res = mysqli_query($conn,$sql);
    $row = mysqli_fetch_row($res);
    $uname=$row[0];
    echo json_encode($uname);

?>