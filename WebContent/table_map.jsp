<%@page import="java.net.ConnectException"%>
<%@page import="java.sql.Timestamp"%>
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
<table>
	<tr>
		<td>숫자</td>
		<td>남은 날짜</td>
		<td>제목</td>
		<td>작성자</td>
		<td>날짜</td>
	</tr>
<%
	int space = Integer.parseInt(request.getParameter("space"));;
	int count = 0;
		
	String select_result_query = "select * from found_board where space=" + space;
	String select_count_query = "select count(*) from found_board where space=" + space;
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(select_count_query);
	if(rs.next()) count = rs.getInt(1);
	
	rs = stmt.executeQuery(select_result_query);
	
	if(count == 0){ %>
	<tr>
		<td colspan="5">게시물이 없습니다!</td>
	</tr>
<%	}
	else {
		while(rs.next()){
			String d_day = rs.getString("d_day");
			String title = rs.getString("title");
			String id = rs.getString("id");
			Timestamp date = rs.getTimestamp("date");
%>
	<tr>
		<td>1</td>
		<td><%= d_day %></td>
		<td><%= title %></td>
		<td><%= id %></td>
		<td><%= date %></td>
	</tr>
<% 
	} 
		} 
%>
	<tr>
		<td colspan="5"><a href="table_map_write.jsp?space=<%= space %>"><button>글쓰기</button></a></td>
	</tr>
</table>
</body>
</html>