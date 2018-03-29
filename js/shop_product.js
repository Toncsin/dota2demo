$(()=>{
    var url=document.location.href;
    var des=url.split("=");
    if (des.length==2){
        desct=des[1];
    }else if(des.length==3){
        desct=des[2];
    }
    var desct=decodeURI(desct);

    $.get("../php/getproduct.php",{desct:desct}).then(data=>{
        var html=`<div class="details">
            <div class="p-banner">
            <div class="banner-img">
               <img id="img" src="../img/product/${data[0].prid}-mid1.jpg" alt="">
            </div>
            <div>`
            for(var i=0;i<data.length;i++ ){
                var p=data[i];
          html+=`<a class="img-small"><img src="../img/product/${p.prid}-small${i+1}.jpg" alt=""></a>`
        };
          html+=`  
            </div>
            </div>
            <div class="product-detail">
            <p>${data[0].desct}</p>
        <p>${data[0].subhead}</p>
        <p>¥${data[0].price}</p>
        <p class="ar">数量：
    <a class="reduce" style="cursor: pointer">-</a>
            <span>0</span>
            <a class="add" style="cursor: pointer">+</a>
        已售出6298件</p>
        <a href="" class="buy">立即购买</a>
            <a href="" class="addcart">加入购物车</a>
            </div>
            </div>
            <div class="remark">
            <div class="guess">
            <p class="title1">猜你喜欢</p>
            <div>
            <img src="../img/product/1.jpg" alt="">
            <p class="p_ti">DOTA2 - TI7 装甲就位 T恤</p>
        <p class="p_pr">¥139.00</p>
        </div>
        <div>
        <img src="../img/product/2.jpg" alt="">
            <p class="p_ti">DOTA2 - TI7 高级卫衣</p>
        <p class="p_pr">¥328.00</p>
        </div>
        <div><img src="../img/product/3.jpg" alt="">
            <p class="p_ti">DOTA2 - TI7 主题足球衫</p>
        <p class="p_pr">¥238.00</p>
        </div>
        <div><img src="../img/product/4.jpg" alt="">
            <p class="p_ti">DOTA2 - 莉娜 Figam手办</p>
        <p class="p_pr">¥488.00</p>
        </div>
        </div>
        <div class="remark-img">
            <div>
            <p class="title2">商品介绍</p>
            <p class="title3">产品评论</p>
            </div>
            <div>
            <img class="bg" src="../img/product/${data[0].prid}-bg.jpg" alt="">
            </div>
            </div>
            </div>`;
        $(".container").html(html);
        var n = 0
        $('.product-detail').on('click','.add',e => {
            e.preventDefault()
            n++
            $('.ar span').html(n)

        })
        $('.product-detail').on('click','.reduce',e => {
            e.preventDefault()
            n--
            if(n < 0){
                n = 0
            }
            $('.ar span').html(n)

        })
        $('.product-detail').on('click','.addcart', e =>{
            e.preventDefault()
            var count = parseInt($('.ar span').html())
            var desct = $('.product-detail').children(':eq(0)').html()
            var name = $('.top-info p').html()
            var uname = name.slice(3,name.length).trim()
            //console.log(uname)
            if(count == 0){
                alert('数量不能为空！')
                return
            }
            $.ajax({
                type : 'GET',
                url : '../php/addCart.php',
                data : {count,desct,uname},
                success : function (data) {
                    if(data.code == 1)
                        alert('添加购物车成功！')
                },
                error : function () {
                    alert('添加购物车失败！')
                }
            })
        });

        (()=>{
            var i=1;
            setInterval(()=>{
                $("#img").attr("src",`../img/product/${data[0].prid}-mid${i}.jpg`);
                i++;
                if(i>4){
                    i=1;
                }
            },3000)
        })();
        (()=>{
            $(".img-small").on("click",(e)=>{
                var $tar=$(e.target).parent();
                var i=$tar.index()+1;
                $("#img").attr("src",`../img/product/${data[0].prid}-mid${i}.jpg`);

            })
        })();
    });
});











