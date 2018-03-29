$(() => {
    $.ajax({
        type : 'GET',
        url : '../php/getCart.php',
        success : function (data) {
            var html = ''
            for(var i = 0; data.length > i; i++ ){
                var item = data[i]
                html +=`<div class="imfor">
                            <div class="check">
                             <img src="../img/cart/product_0.png" data-pid="${item.pid}">
                            </div>
                            <div class="product">
                                 <a href="#">
                                    <img src="${item.pic}">
                                 </a>
                                <span class="desc">
                                    <a href="#">${item.desct}</a>
                                </span>
                            </div>
                            <div class="price">
                                 <p>
                                    <b>￥</b><span>${item.price}</span>
                                </p>
                            </div>
                            <div class="num">
                                <span class="reduce">&nbsp;-&nbsp;</span>
                                <input type="text" value="${item.count}">
                                <span class="add">&nbsp;+&nbsp;</span>
                            </div>
                            <div class="total-price">
                                <span>￥</span>
                                <span>${(item.price * item.count).toFixed(2)}</span>
                            </div>
                            <div class="del">
                                <a href="#" data-menu="${item.pid}">删除</a>
                            </div>
                        </div>`
            }

            $('#content-box-body').html(html)
        },
        error : function () {
            alert('添加失败！')
        }
    }).then(function () {
        var pid = [],n = 0,sum1 = 0, imgs = [],total = 0,price = 0
        $('.del').click( e => {
            if(confirm('确定删除吗？')){
                var pid = $(e.target).data('menu')
                $.ajax({
                    type : 'GET',
                    url : '../php/deleteCart.php',
                    data:{pid},
                    success : function (data) {
                        alert(data.msg)
                        location.href="../html/cart.html";
                    },
                    error : function () {
                        alert('删除失败！')
                    }
                })

            }
        })
        $('.add').click(e => {
            var $tar = $(e.target)
            n = $tar.parent().children(':eq(1)').val()
            n++
            price = $tar.parent().prev().children().children('span').html()
            //console.log(price)
            total = price * n
            $tar.parent().next().children(':eq(1)').html(total.toFixed(2))
            $tar.parent().children(':eq(1)').val(n)
        })
        $('.reduce').click(e => {
            var $tar = $(e.target)
            n = $tar.parent().children(':eq(1)').val()
            n--
            if(n < 0){
                n = 0
            }
            price = $tar.parent().prev().children().children('span').html()
            total = price * n
            $tar.parent().next().children(':eq(1)').html(total.toFixed(2))
            $tar.parent().children(':eq(1)').val(n)
        })
        $('.check > img').click(e => {
            var $tar = $(e.target)
            var pid = $tar.data('pid')
            var $alls = $('.check-top > img, .all > span > img')
            var $select = $('.check > img')
            if(!$tar.is('.checked')){
                $tar.addClass('checked')
                $tar.attr('src','../img/cart/product_1.png')
                if(!$select.is(':not(.checked)')){
                    $alls.addClass('checked')
                    $alls.attr('src','../img/cart/product_1.png')
                }
            }else{
                $tar.removeClass('checked')
                $tar.attr('src','../img/cart/product_0.png')
                $alls.removeClass('checked')
                $alls.attr('src','../img/cart/product_0.png')
            }
        })
        $('.check-top ,.all').click(e => {
            var $all = $('.check-top > img, .all > span > img')
            var $select = $('.check > img')
            // var pid = $select.data('pid')
            if(!$all.is('.checked')){
                $select.addClass('checked')
                $all.addClass('checked')
                $select.attr('src','../img/cart/product_1.png')
                $all.attr('src','../img/cart/product_1.png')
            }else{
                $select.removeClass('checked')
                $all.removeClass('checked')
                $select.attr('src','../img/cart/product_0.png')
                $all.attr('src','../img/cart/product_0.png')
            }
        })
        $('.base a').click(e => {
            var img = $('.imfor .checked')
            //console.log(img)
            if(confirm('确定删除所选商品吗？')){
                for(var i = 0; i < img.length; i++ ){
                    pid[i] = $(img[i]).data('pid')
                }
                //console.log(pid)
                $.ajax({
                    type : 'POST',
                    url : '../php/deleteAllCart.php',
                    data : {pid},
                    success : function (data) {
                        if(data.code == 1)
                            alert(data.msg)
                        location.href="../html/cart.html";
                    },
                    error : function () {
                        alert('删除失败，请重试！')
                    }
                })

            }
        })
        $('#shopping-cart').click(e =>{
            e.preventDefault()
            sum1 = 0
            imgs = $('.imfor .checked')
            //console.log(imgs)
            for(var i = 0; i < imgs.length; i++){
                sum1 += parseInt($(imgs[i]).parent().parent().children(':eq(4)').children(':eq(1)').html())
            }
            $('.foot-price').html(sum1.toFixed(2))
            $('.foot-selected').children('span').html(imgs.length)
        })
    })
})
$(() => {
    $.ajax({
        type: 'GET',
        url: '../php/getCartName.php',
        success: function (data) {
            console.log(data)
            var html = `<p style="color:gray;font-size:15px;display:inline-block">欢迎：${data}</p><a style="display:inline-block text-decoration:none;cursor: pointer;font-size: 15px;margin-left: 15px;color:gray" class="logout";>注销</a>`;
            $(".top-info").html(html);
            $(".logout").on("click", e => {
                e.preventDefault()
                location.href = "../html/secretShop.html";
            })
        },
        error: function (data) {
            alert("添加失败！")
        }
    })
})
