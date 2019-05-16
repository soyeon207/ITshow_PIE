<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset=utf-8>
        <title>미림 분실물 센터</title>
       	
    	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
    	<link rel="stylesheet" type="text/css" href="css/examples.css" />
    	<link rel="stylesheet" type="text/css" href="css/nav.css"/>
    	<link rel="stylesheet" type="text/css" href="css/index_slide.css"/>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	
    	<script>
    	
    	 $(function() {
    		  $('.bxslider').bxSlider({
    			  auto: true,
    			  autoControls: true,
    			  stopAutoOnClick: true,
    			  pager: true,
    			  slideWidth: 300
    			}); 
    	  });
    	
    	$(function(){
  		  $('.yester_num').text('70');
    	});
            
    	$(function(){
  		  $('.today_num').text('80');
    	});
    	
        </script>
    </head>
    <body>

	<div id="fullpage">
		<div class="section" id="section0">
			<ul id="side_menu">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
			</ul>
			<br>
			<div class="b_color" style="height: 50px;">
				<ul class="justify-content-center">
					<li class="nav-item"><a class="nav-link active"
						href="request_board.jsp"> 찾습니다 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="response_board.jsp"> 찾아가세요 </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> 유기물품 </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> My page
					</a></li>
				</ul>
			</div>

			<section class="number">
				<article id="yesterday">
					<span class="title">오늘 들어온 분실물</span><br> <span
						class="yester_num">50</span>
				</article>

				<article id="today">
					<span class="title">어제 들어온 분실물</span><br> <span
						class="today_num">60</span>
				</article>

			</section>

		</div>

		<div class="section" id="section2">
				
				<div style="width:50%;float:left;color:#38985A;font-weight:bold;font-size:20px" >
					오늘 들어온 분실물
					<center>
						<div class="bxslider">
						<div>
							<img src="img/1.png">
						</div>
						<div>
							<img src="img/2.png">
						</div>
						<div>
							<img src="img/3.png">
						</div>
					</div>	
					</center>
								
				</div>

				<div style="width:50%;float:left;color:#38985A;font-weight:bold;font-size:20px">
					어제 들어온 분실물
					<center>
					<div class="bxslider">
						<div>
							<img src="img/1.png">
						</div>
						<div>
							<img src="img/2.png">
						</div>
						<div>
							<img src="img/3.png">
						</div>
					</div>
					</center>
					
				</div>
					
				
		</div>
	</div>

	<script type="text/javascript" src="js/fullpage.js"></script>
<script type="text/javascript" src="js/examples.js"></script>
<script type="text/javascript">
	var myFullpage = new fullpage('#fullpage',
			{
				sectionsColor : [ '#ffffff', '#ffffff'],
				anchors : ['firstPage', 'secondPage'],
				menu : '#menu',
				lazyLoad : true
			});
</script>
 		
    </body>
</html>
