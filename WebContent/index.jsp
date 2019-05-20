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
    		  
    		  $('.yester_num').text('70');
    		  $('.today_num').text('80');
    		  $('.yester_num').click(function() {
    			  $('#yester_mul').css("display","inline");
    		  });
    		  $('.today_num').click(function() {
    			  $('#today_mul').css("display","inline");
    		  });    		  
    	  });
    	
    	
        </script>
    </head>
    <body>

	<div id="fullpage">
		<div class="section" id="section0">
			<section class="number">
				<article id="yesterday">
					<span class="title">오늘 들어온 분실물</span><br> 
					<span class="yester_num">
					50
					</span>
					        <select multiple size="5" style="width:100px;text-align:center;display:none;" id="yester_mul">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
        </select>
				</article>

				<article id="today">
					<span class="title">어제 들어온 분실물</span><br> 
					<span class="today_num">60</span>
					        <select multiple size="5" style="width:100px;text-align:center;display:none" id="today_mul">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
        </select>
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
