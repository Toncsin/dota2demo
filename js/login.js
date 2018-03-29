$(()=>{
    //console.log(1)
    $("#btn2").click(
        function (e) {
              e.preventDefault()
             //console.log(2)
            var u=$("#username").val()
            var p=$("#passwd").val()
            //console.log(3)
            //console.log(u+":"+p)
            var red = /^[a-z0-9]{2,13}$/i
              if(!red.test(u)){
                  alert("用户名格式不对")
                  return
              }
              //console.log(4)
            $.ajax({
                type:"POST",
                url:"../php/login.php",
                data:{uname:u,upwd:p},
                success:function(data){
                    if(data.code>0){
                          location.href=`../html/secretShop.html?uname=${u}`;
                        }else{
                        alert(data.msg)
                    }
                },
                error:function(){
                    alert("网络故障，请检查")
                }
            })
        }
    )
})