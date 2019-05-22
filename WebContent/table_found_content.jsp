<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="db_conn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	int bnum = Integer.parseInt(request.getParameter("bnum"));
	String title = "";
	String contents = "";
	String id = "";
	String date = "";
	
	String select_board_content = "select * from found_board where bnum=" + bnum;
	String select_file_content = "select * from found_images where bnum=" + bnum;
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(select_board_content);
	if(rs.next()) {
		title = rs.getString("title");
		contents = rs.getString("contents");
		id = rs.getString("id");
		date = rs.getString("date");
	}
%>
<table>
	<tr>
		<td><%= title %></td>
		<td><%= id %></td>
		<td><%= date %></td>
	</tr>
	<tr>
		<td colspan="3">
			<textarea><%= contents %></textarea>
		</td>
	</tr>
</table>
</body>
</html>