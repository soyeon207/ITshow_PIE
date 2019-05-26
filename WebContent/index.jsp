<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ include file="db_conn.jsp"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta charset=utf-8>
        <title>미림 분실물 센터</title>
       	
    	<link rel="stylesheet" type="text/css" href="css/fullpage.css" />
    	<link rel="stylesheet" type="text/css" href="css/examples.css" />
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


	<%
		ArrayList<String> today_title = new ArrayList<String>();
		ArrayList<String> yester_title = new ArrayList<String>();
		int today_date;
	%>
	<%
	
	SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "dd", Locale.KOREA );
	Date currentTime = new Date();
	String mTime = mSimpleDateFormat.format (currentTime);
	today_date = Integer.parseInt(mTime);
	
	String select_title = "select * from found_board";
	
	pstmt = conn.prepareStatement(select_title);
	rs = pstmt.executeQuery();
	
	while(rs.next()) {
		int d = Integer.parseInt(rs.getString("date").substring(8,10));
		if(today_date == d){
			today_title.add(rs.getString("title"));
		}
		else if((today_date-1)==d){
			yester_title.add(rs.getString("title"));
		}
	
	}
	%>
	
	<div id="fullpage">
		<div class="section" id="section2">
				
				<div style="width:50%;float:left;color:#55ce3c;font-weight:bold;font-size:20px">
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
				
				<div style="width:50%;float:left;color:#55ce3c;font-weight:bold;font-size:20px" >
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
		</div>
		<div class="section" id="section0">
			<section class="number">
				<article id="yesterday">
					<span class="title">오늘 들어온 분실물</span><br> 
					<span class="yester_num">
					<%=today_title.size() %>
					</span>
					        <select multiple size="5" style="width:100px;text-align:center;display:none;font-size:15px;" id="yester_mul" onchange="if(this.value) location.href=(this.value);">
            				<%
            					for(int i=0;i<today_title.size();i++) {
            						
            		   			%>
            		   				<option value="<%=i%>"><%=today_title.get(i)%></option>
            		   				
            		   			<% 
            					}
            				%>
        </select>
				</article>

				<article id="today">
					<span class="title">어제 들어온 분실물</span><br> 
					<span class="today_num"><%=yester_title.size() %></span>
					        <select multiple size="5" style="width:100px;text-align:center;display:none;font-size:15px;" id="today_mul">
            				<%
            					for(int i=0;i<yester_title.size();i++) {
            						
            		   			%>
            		   				<option value="<%=i%>"><%=yester_title.get(i)%></option>
            		   				
            		   			<% 
            					}
            				%>
            				
        </select>
				</article>

			</section>

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
