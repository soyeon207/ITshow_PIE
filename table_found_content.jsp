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
<%@ include file="cookie.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	int bnum = Integer.parseInt(request.getParameter("bnum"));
	String title = "";
	String contents = "";
	String id = "";
	String date = "";
	String img = "";
	String space = "";
	
	String select_board_content = "select * from found_board where bnum=" + bnum;
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(select_board_content);
	if(rs.next()) {
		title = rs.getString("title");
		contents = rs.getString("contents");
		id = rs.getString("id");
		date = rs.getString("date");
		img = rs.getString("img");
		space = rs.getString("space");
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
		<%if(img != null){ %>
			<img src="img_view.jsp?bnum=<%= bnum %>"><br>
		<%} %>
			<textarea><%= contents %></textarea>
		</td>
	</tr>
	<tr>
	<%if(cookie_id.equals(id)){ %>
		<td><a href="proc_table_found_delete.jsp?bnum=<%=bnum %>"><button>삭제</button></a></td>
		<td><a href="table_found_update.jsp?bnum=<%=bnum %>"><button>수정</button></a></td>
	<%} %>
		<td><a href="table_found.jsp?space=<%=space %>"><button>돌아가기</button></a></td>
	</tr>
</table>
</body>
</html>