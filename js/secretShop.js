/*******加载轮播*******/

$(()=>{
    var i=1;
    function task(){
        i++;
        if(i==5){i=1;}
        var divs=document.querySelectorAll(".banner>div");
        var j=0,count=14,interval=50,dura=500;
        var timer=setInterval(()=>{
            var div=divs[j];
            div.style.backgroundImage=`url(../img/${i}.jpg)`;
            j++;
            if(j==count){
                clearInterval(timer);
            }
        },50)
        setTimeout(()=>{
            for(var div of divs)
            div.className="";
        },interval*count+dura)
   }
    setInterval(task,5000)
});
/******加载标签页游戏手办******/
$(()=>{
   $.get("../php/getMasterpiece.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">游戏手办</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#masterpiece").html(html);
        $("#masterpiece").on("click",".product",(e)=>{
             var $ta=$(e.target).parent().text();
             var $tar=$ta.split("¥")[0].trim();
             var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
            location.href=`../html/shop_product.html?${data}`;
       })
   });
});

/******加载标签页主题服饰******/
$(()=>{
    $.get("../php/getClothes.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">主题服饰</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#clothes").html(html);
        $("#clothes").on("click",".product",(e)=>{
            var $ta=$(e.target).parent().text();
            var $tar=$ta.split("¥")[0].trim();
            var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
            location.href=`../html/shop_product.html?${data}`;
        })
    });

});
/******加载标签页创意T恤******/
$(()=>{
    $.get("../php/getTshirts.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">创意T恤</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#tshirts").html(html);
        $("#tshirts").on("click",".product",(e)=>{
            var $ta=$(e.target).parent().text();
            var $tar=$ta.split("¥")[0].trim();
            var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
            location.href=`../html/shop_product.html?${data}`;
        })
    });

});
/******加载标签页毛绒玩具******/
$(()=>{
    $.get("../php/getPlush.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">毛绒玩具</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#plush").html(html);
        $("#plush").on("click",".product",(e)=>{
            var $ta=$(e.target).parent().text();
            var $tar=$ta.split("¥")[0].trim();
            var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
            location.href=`../html/shop_product.html?${data}`;
        })
    });

});
/******加载标签页生活用品******/
$(()=>{
    $.get("../php/getDaily.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">生活用品</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#daily").html(html);
        $("#daily").on("click",".product",(e)=>{
            var $ta=$(e.target).parent().text();
            var $tar=$ta.split("¥")[0].trim();
            var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
            location.href=`../html/shop_product.html?${data}`;
        })
    });

});
/******加载标签页特别限量******/
$(()=>{
    $.get("../php/getSpecial.php").then(data=>{
        var html=`<div><a href="">首页</a>><a href="">DOTA 2</a>><a href="">特别限量</a></div><div>
<div>销量 | 价格 | 上架时间</div>`;
        for(var i=0;i<data.length;i++ ){
            var p=data[i];
            html+=`<div class="product">
				    <img src="${p.pic}">
					<p class="desct">${p.desct}</p>
					<p class="price">¥${p.price}</p>
					<a class="addcart" href="">
					   <img src="../img/addCart.png">
					</a>
				</div>`;
        }
        html+=`</div>`;
        $("#special").html(html);
        $("#special").on("click",".product",(e)=>{
            var $ta=$(e.target).parent().text();
            var $tar=$ta.split("¥")[0].trim();
            var $tar=encodeURI($tar);
            var url=document.location.href;
            var uname=url.split("=")[1];
            if (uname!=null){
                var data=`uname=${uname}&desct=${$tar}`;
            } else {
                data=`desct=${$tar}`
            };
          location.href=`../html/shop_product.html?${data}`;
        })
    });
});


