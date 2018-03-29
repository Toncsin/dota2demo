$(()=>{
    $("#btn3").click(
        function (e){
            e.preventDefault()
            var uname = $(".uname").val()
            var upwd = $(".upwd").val()
            var email = $(".emails").val()
            var username = $(".truename").val()
            var idnumber = $(".idnumber").val()
            var c = $(".code").val()
            var codereg=/^[a-z]{4}$/i
            if(!codereg.test(c)){
                alert("验证码格式不正确，请检查");
                return;
            }
           // console.log(1)
            $.ajax({
                type:"get",
                url:"../php/register.php",
                data:{uname,upwd,email,username,idnumber,code:c},
                success:function(data){

                    console.log(data)
                    if(data.code>0){
                        alert("注册成功");
                        location.href="login.html";
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