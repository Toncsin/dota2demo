    var duration = 500, wait = 3000, play=null,move=0,width=1770
	var $ul = $('.header > ul:first')
	$ul.css("width",width*6)
	function headPlay(){
				move++
				$ul.animate({
					left:-width*move - 250
				},duration,function () {
                    if(move > 2){
                        setTimeout(1000)
                        move = 0
                       $ul.css('left',-250)
                    }
                })

				$(`.dots > a:eq(${move-3})`).addClass('in').siblings().removeClass('in')
	}
	play = setInterval(headPlay,3500)
	$('.dots > a').click(e => {
		e.preventDefault()
		$tar = $(e.target)
		i =  $tar.index()
        console.log(i)
        $ul.animate({
            left : -width * i - 250
        },duration)
        $(`.dots > a:eq(${i})`).addClass('in').siblings().removeClass('in')
	})
    $('.dot').hover(function () {
        clearInterval(play)
    },function () {
        play = setInterval(headPlay,3500)
    })
	//楼层一新闻切换
	$('.c_tab').click( e => {
		e.preventDefault()
		$tar = $(e.target)
		i = $tar.index()
		$(`.c_panels li:eq(${i})`).show().siblings().hide()
        $tar.css({border : '1px solid #999',
            color : '#ccc'},300).siblings().css({
                                            border:'1px solid #323232',
                                            color:'#999'
                                        })
	})
    //轮播二
    var width1 = 420, move1 = 0
    function carousel() {
        var $divC = $('.carousel ul > div')
            $divC.animate({
                marginLeft : -width1 * move1
            },500,function () {
                     if(move1 == 4) {
                         move1 = 0
                         $divC.css('marginLeft', 0)
                     }
                })
        move1++
        $(`.dot > a:eq(${move1-1})`).addClass('in').siblings().removeClass('in')
    }
    var play1=null
    play1 = setInterval(carousel,2500)
    $('.dot > a').click(e => {
    	e.preventDefault()
		$tar = $(e.target)
        i =  $tar.index()
		//1.位移到当前图片
		$(`.carousel ul div`).animate({marginLeft : -width1 * i},500)
		//2.给当前dot添加样式
        $(`.dot > a:eq(${i})`).addClass('in').siblings().removeClass('in')
		//3.清除定时器
		clearInterval(play1)
    })
    $('.dot').hover(function () {
        clearInterval(play1)
    },function () {
		play1 = setInterval(carousel,2500)
    })
	//楼层二新闻切换
    $('.right_title > ul').click( e => {
        e.preventDefault()
        $tar = $(e.target)
        i = $tar.index()
        $(`.active_panels li:eq(${3 - i})`).show().siblings().hide()
    })
    //楼层三视频切换
    $('.sc_tab').click( e => {
        e.preventDefault()
        $tar = $(e.target)
        i = $tar.index()
        console.log(i)
        $(`.sc_panels li:eq(${i})`).show().siblings().hide()
        $tar.css({border : '1px solid #999',
                      color : '#ccc'},300).siblings().css({
                                            border:'1px solid #323232',
                                            color:'#999'
                                            })
    })

