<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Calendar"
%>
<%
    	Calendar cal = Calendar.getInstance();
    	int today = cal.get(cal.DATE);
    	int height = 4;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=utf-8>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>index.html</title>
        <meta name="author" content="Matthew Howell" />
    	<meta name="description" content="fullPage continuous scrolling demo." />
    	<meta name="keywords"  content="fullpage,jquery,demo,scroll,loop,continuous" />
    	<meta name="Resource-type" content="Document" />
		
    	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
    	<link rel="stylesheet" type="text/css" href="css/examples.css" />
    	<link rel="stylesheet" type="text/css" href="css/nav.css"/>
    	<link rel="stylesheet" type="text/css" href="css/index_slide.css"/>
    	
    	<script type="text/javascript" src="js/jquery.cslider.js"></script>
    	<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    	<script type="text/javascript">
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
        </ul><br>
        	<div class="b_color" style="height:50px;">
        	<ul class="justify-content-center">
        			<li class="nav-item">
        				<a class="nav-link active" href="request_board.jsp">
        					찾습니다
        				</a>
        			</li>
        			<li class="nav-item">
        				<a class="nav-link" href="response_board.jsp">
        					찾아가세요
        				</a>
        			</li>
        			<li class="nav-item">
        				<a class="nav-link" href="#">
        				유기물품
        				</a>
        			</li>
        			<li class="nav-item">
        				<a class="nav-link" href="#">
        					My page
        				</a>
        			</li>
        		</ul>
        	</div>
        	
        	<section class="number">
				<article id="yesterday">
           	 		<span class="title">오늘 들어온 분실물</span><br>
            		<span class="yester_num">50</span>
        		</article>

        		<article id="today">
            		<span class="title">어제 들어온 분실물</span><br>
            		<span class="today_num">60</span>
       	 		</article>

        	</section>
        	
    		</div>
    		
    		<div class="section" id="section2">
        		<div class="intro">
            		<table class="center">
	<tr>
		<td>
			<table class="line1">
				<tr>
					<td colspan="2"><a class="font" id="center">오늘 들어온 분실물</a></td> 
				</tr>
				<tr>
					<td class="picture1"></td>
					<td class="picture1"></td>
				</tr>
				<tr>
					<td class="picture1"></td>
					<td class="picture1"></td>
				</tr>
			</table>
		</td>
		<td>
			<table class="line2">
				<tr>
					<td colspan="2"><a class="font" id="center">어제 들어온 분실물</a></td> 
				</tr>
				<tr>
					<td class="picture1"></td>
					<td class="picture1"></td>
				</tr>
				<tr>
					<td class="picture1"></td>
					<td class="picture1"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
        		</div>
    		</div>
	</div>

<script type="text/javascript" src="js/fullpage.js"></script>
<script type="text/javascript" src="js/examples.js"></script>
<script type="text/javascript">
    var myFullpage = new fullpage('#fullpage', {
        sectionsColor: ['#ffffff', '#ffffff', '#ffffff', 'ffffff', '#ffffff'],
        anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
        menu: '#menu',
        lazyLoad: true
    });
</script>
 		
    </body>
</html>
