//封装适合各种情况的简化版ajax函数
function ajax({//利用解构，获取将来参数对象中每个属性值
  type,//请求类型: "get"||"post"
  url,//请求的url地址: "xxx.php"
  data,//请求携带的参数: "变量1=值&..."
  dataType,//服务器端返回值类型: "json"||"text"
}){
  //只要远程请求，必有延迟，只要延迟，比用promise等待完成后，才执行后续操作
  return new Promise(callback=>{//.then()
    //AJAX 4步/5步:
    var xhr=new XMLHttpRequest();//1.获得xhr对象
    //如果是get请求，且传入了data参数，才需要拼接url和data为get请求的完整地址
    if(type.toLowerCase()=="get"&&data!==undefined)
      url+="?"+data;
    xhr.open(type,url,true);//2. 建立连接
    //3. 设置请求状态回调函数
    xhr.onreadystatechange=function(){
      //如果请求完成，且成功!
      if(xhr.readyState==4){
				if(xhr.status==200){
					var resData=xhr.responseText;
					//如果服务器端响应类型不是json，则调用后续resolve操作，并传入原始responseText，做后续处理
					if(dataType!==undefined
						&&dataType.toLowerCase()=="json")
						resData=JSON.parse(resData);
					callback(resData);
				}
      }
    }
    //只有type为post，才需要设置请求头
    if(type.toLowerCase()=="post")
      xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    //只有type为post，才需要send时，传入参数
    xhr.send(type.toLowerCase()=="post"?data:null);
  })
}