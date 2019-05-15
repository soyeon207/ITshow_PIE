<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset=utf-8>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <style>
            #header {
                top : 70%;
                left : 50%;
                position : absolute;
                height : 300px;
                width : 400px;
                margin : -150px 0px 0px -200px;
                padding : 5px;  
            }
            #button {
                font-size : 12pt;
                color : white;
                background-color : #38985A;
                width : 100px;
                height : 45px;
            }
            #id {
                width : 220px;
                height : 25px;
            }
            input:hover{
            cursor:pointer;
            }
            img:hover{
                cursor:pointer;
            }
        </style>
    </head>
    <body>
        <table style=margin-bottom:30px;>
        <img src="img/logo.png" alt="logo" class="logo" width=300px>
        <div>
            <input type="button" value="로그인" id="btn1" onclick="location.href='login.html'">
            <input type="button" value="회원가입" id="btn1">
        </div>
        <table class="menu">
            <tr class="menu">
                <td><input type="button" id="btn2" value="찾아요"></td>
                <td><input type="button" id="btn2" value="찾아가세요"></td>
                <td><input type="button" id="btn2" value="유기물품"></td>
                <td><input type="button" id="btn2" value="My page"></td>
            </tr>
        </table>
        <form>
            <div id = "header">
            <table width="90%" cellpadding="10" border= "1" align="center" rules="groups">
                <tr>
                    <td width=300 align = "center"><input type = "text" name = "id" id = "id" placeholder="아이디"></td>
                </tr>
                <tr>
                    <td width=300 align = "center"><input type = "password" name = "pw" id = "id" placeholder="비밀번호"></td>
                </tr>
                <tr>
                    <td width=300 align = "center"><input type = "password" name = "pw2" id = "id" placeholder="비밀번호 확인"></td>
                </tr>
                <tr>
                    <td colspan=2 align = "center"><button type=submit id = "button">가입하기</td>
                </tr>
            </table>
            </div>
        </form>       
    </body>
</html>