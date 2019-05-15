<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="db_conn.jsp"%>
<% 
	request.setCharacterEncoding("UTF-8");
	int board_type = Integer.parseInt(request.getParameter("board_type"));
	
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String today = format.format(now);
	String id = "gg";
	
	String board_name = "response_board";
	
	if(board_type == 0){
		board_name = "request_board";
	}
	
	String sql = "insert into " + board_name + " (title, contents, id, date) values(?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, contents);
	pstmt.setString(3, id);
	pstmt.setString(4, today);
 	pstmt.executeUpdate();
 	
 	if(board_type == 0){
%>
	<jsp:forward page="request_board.jsp"/>
<% } else{ %>
	<jsp:forward page="response_board.jsp"/>
<% } %>
</body>
</html>