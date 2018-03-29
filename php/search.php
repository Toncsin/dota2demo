<?php
   require_once("init.php");
   $kw=$_REQUEST["kw"];
   if($kw==""){
   echo '{"code":-2,"msg":"请输入关键词"}';
   exit;
   }
   $sql="select *  from dota_shop_product";
   if($kw){
   	$kws=explode(" ",$kw);
   	for($i=0;$i<count($kws);$i++){
   		$kws[$i]=" desct like '%$kws[$i]%' ";
   	}
   	$where=implode(" and ",$kws);
   	$sql.=" where $where ";
   }
   $result=mysqli_query($conn,$sql);
   $data=mysqli_fetch_all($result,1);
   if($data){
        echo json_encode($data);
   }else{
        echo '{"code":-1,"msg":"未查到相关商品！"}';
   }
?>