<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <style>
        .nav-item a{
        	color:white;
        }
        .nav-item a:hover{
        	color: black;
        }
        li{
            text-align: center;
            margin: 10px;
            font-size: 20px;
        }
                	
            #side_menu{
        		width: 40%;
                float: right;
        		list-style: none;
        		text-align: right;
        	}
        	
        	#side_menu li{
        		display: inline;
        	}
        	
        	#side_menu a{
        		font-size: 50%;
        		color: black;
        		padding: 5px 10px;
        	}
        	.logoImg{
        		max-width: 150px;
        		min-width: 150px;
        		margin-bottom: 15px;
                float: left;
        	}
        	a{
        		text-decoration: none;
        	}
        	.justify-content-center{
        		background-color: #38985A;
                text-align: center;
                padding-top: 10px;
                position: relative;
                left: 0;
                right: 0;
        	}
            .justify-content-center li{
        		display: inline;
                list-style-type: none;
                margin-left: 10%;
        	}
        
    </style>
      
<title>Hello, world!</title>
  </head>
  <body>
      
      <nav>
        <ul id="side_menu">
        	<li><a href="login.jsp">로그인</a></li>
        	<li><a href="join.jsp">회원가입</a></li>
        </ul><br>

		<ul class="justify-content-center">
            <li>
            <a href="index.jsp">
		      <img src="img/logo.png" alt="logo" class="logoImg">
		    </a>
            </li>
			<li class="nav-item">
			<a class="nav-link active" href="request_board.jsp">찾습니다</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="response_board.jsp">찾아가세요</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="#">유기물품</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="#">My page</a>
			</li>
		</ul>
		<br><br>
  	</nav>
  </body>
</html>