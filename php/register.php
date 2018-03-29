<?php
    session_start();
    require_once("init.php");
    $uname=$_REQUEST["uname"];
 	$upwd=$_REQUEST["upwd"];
    $username=$_REQUEST["username"];
    $idnumber=$_REQUEST["idnumber"];
    $email=$_REQUEST["email"];
    $code=$_REQUEST["code"];
     $cPattern='/^[a-z]{4}$/i';
                        if(!preg_match($cPattern,$code)){
                    	    echo '{"code":-3,"msg":"验证码格式不正确"}';
                    	    exit;
                        }
          $_SESSION['code'];
          if($code != $_SESSION['code']){
             echo '{"code":-4,"msg":"验证码错误"}';
             exit;
            }
           $upattern = '/^[a-zA-Z0-9]{3,12}$/';
        if(!preg_match($upattern,$uname)){
    	    echo '{"code":-2,"msg":"用户名格式不正确"}';
    	    exit;
        }
    	if(!preg_match($upattern,$upwd)){
            echo '{"code":-2,"msg":"密码格式不正确"}';
            exit;
            }
         $identity='/^[\x{4e00}-\x{9fa5}]{2,5}$/u';
                 if(!preg_match($identity,$username)){
             	    echo '{"code":-2,"msg":"用户真实姓名不正确"}';
             	    exit;
                 }
        $id='/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/';
          if(!preg_match($id,$idnumber)){
          echo '{"code":-2,"msg":"用户身份证不正确"}';
          exit;
           }
        $emails='/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+$/';
                 if(!preg_match($emails,$email)){
                  echo '{"code":-2,"msg":"邮箱格式不正确"}';
                  exit;
                   }
	 $sql="select * from dota_shop_user where uname='$uname'";
   $result=mysqli_query($conn,$sql);
	$result=mysqli_fetch_row($result);
	if($result){
	echo '{"code":-3,"msg":"用户名已存在"}';
	exit;
	}
       $sql="INSERT INTO dota_shop_user (uname,upwd,username,idnumber,email,ctime) VALUES( '$uname','$upwd','$username','$idnumber','$email',now())";
       $result=mysqli_query($conn,$sql);
              if($result){
              		echo '{"code":1,"msg":"注册成功"}'."\n";
              		//echo json_encode($row);
              	}else{
              		echo'{"code":-1,"msg":"注册失败"}';
              	}

?>