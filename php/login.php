<?php
	session_start();
	require_once("init.php");
	$uname=$_REQUEST["uname"];
	$upwd=$_REQUEST["upwd"];
    $upattern = '/^[a-zA-Z0-9]{3,12}$/';
    if(!preg_match($upattern,$uname)){
	    echo '{"code":-2,"msg":"用户名格式不正确"}';
	    exit;
    }
	if(!preg_match($upattern,$upwd)){
        echo '{"code":-2,"msg":"密码格式不正确"}';
        exit;
        }
	$sql="SELECT * FROM dota_shop_user WHERE uname='$uname' AND upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_all($result,1);
	if(mysqli_error($conn)){
	   echo mysqli_error($conn);
	}
	$uid=($row==null)?0:$row[0]["uid"];
	$ip=$_SERVER["REMOTE_ADDR"];
	$rs="login success $uname ip:$ip";
	if($row==null){
		$rs="login error $uname ip:$ip";
	}
	$sqll="INSERT INTO t_log VALUES( NULL,$uid,'login',now(),'$rs')";
	$result=mysqli_query($conn,$sqll);
	if($row){
		echo '{"code":1,"msg":"登陆成功"}'."\n";
		//echo json_encode($row);
	}else{
		echo'{"code":-1,"msg":"用户名或密码错误"}';
	}
?>