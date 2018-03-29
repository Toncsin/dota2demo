//在当前页面加载header.html
$(()=>{
    $("#header").load(
		"shop_header.html",
		()=>{
		    var url=document.location.href.split("/")[5];
		    if(url.indexOf("?")!=-1){url=url.split("?")[0];}
		if(url=="secretShop.html"){
            $(document.body).on(
                 "click",".navson",e=>{
				     e.preventDefault();
                 	 var $tar=$(e.target);
                 	 var i=$tar.index();
                 	 // console.log(i);
                     //console.log($tar);
                     $("#search").addClass("hide").removeClass("show");
                    $(".container").addClass("show").removeClass("hide");
                     if(!$("a").is("active")){
                     	$tar.addClass("active").siblings().removeClass("active");
                         $tar.removeClass("navs").siblings().addClass("navs");
                     }
                    var $divs=$(".container>div");
                    $($divs[i]).addClass("show").siblings().removeClass("show");
					$($divs[i]).removeClass("hide").siblings().addClass("hide");
				}),
            $(document.body).on(
            	"click",".search-img",e=>{
                    e.preventDefault();
                    var kw=$(".search-input").val();
                    $.get("../php/search.php",{kw}).then(data=>{
                    	var html=``;
                    	if(data.code==-1 || data.code==-2){
                            html=`未查询到相关商品`;
						}else{
                        for(var i=0;i<data.length;i++ ){
                            var p=data[i];
                            html+=`<div class="product" style="display:inline-block">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
                        }}
                        $("#search").html(html);
                        $(".container").addClass("hide").removeClass("show");
                        $("#search").addClass("show").removeClass("hide");
					})
				});
            $(document.body).on(
                "click","#login1",()=>{
                    location.replace("../html/login.html");
                }
            );
            $("#register1").click(()=>{
                    location.replace("../html/register.html");
                }
            )};
            (()=>{
                var url=document.location.href;
                if(url.indexOf("?")!=-1){
                var a=url.split("?")[1];
                var u=a.split("=");
                    var un=u[0];
                    var uname=u[1];
                    if (un=="uname"){
                    var uname=uname.split("&")[0];
                    if(uname){
                        var uname=decodeURI(uname);
                        var html=``;
                        html+=`<p style="color:gray;font-size:15px;display:inline-block">欢迎：${uname}</p><a style="display:inline-block text-decoration:none;cursor: pointer;font-size: 15px;margin-left: 15px;color:gray" class="logout";>注销</a>`;
                        $(".top-info").html(html);
                        $(".logout").on("click",function(){
                            location.href="../html/secretShop.html";
                        })
                    }}}
            })();

		});

})
