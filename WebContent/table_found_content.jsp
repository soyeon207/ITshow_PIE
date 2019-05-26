<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/table.css" />
</head>
<body>
<%@ include file="db_conn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	int bnum = 1;
	int cnum = 1;
	String title = "";
	String contents = "";
	String id = "admin";
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
		bnum = rs.getInt("bnum");
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
		<td><a href="proc_table_found_delete.jsp?bnum=<%=bnum %>"><button>삭제</button></a></td>
		<td><a href="table_found_update.jsp?bnum=<%=bnum %>"><button>수정</button></a></td>
		<td><a href="table_found.jsp?space=<%=space %>"><button>돌아가기</button></a></td>
	</tr>
</table>
<table>
<%
	int count = 0;
	
	String select_board_result = "select * from found_comment where space=" + space + " and bnum="+bnum;
	String select_board_count = "select count(*) from found_comment where space=" + space + " and bnum="+bnum;
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(select_board_count);
	if(rs.next()) count = rs.getInt(1);
	
	rs = stmt.executeQuery(select_board_result);
	
	if(count == 0){ %>
	<tr>
		<td colspan="3">댓글이 없습니다!</td>
	</tr>
<%	}
	else {
		while(rs.next()){
			String comment_contents = rs.getString("contents");
%>
	<tr>
		<td><%= id %></td>
		<td><%= comment_contents %></td>
		<td><a href="#"><button>수정</button></a>
		<a href="table_found_comment_delete.jsp?space=<%= space %>&bnum=<%= bnum %>&cnum=<%= cnum %>"><button>삭제</button></a></td>
	</tr>
<% 
	} 
		} 
%>

<form action="table_found_comment_write.jsp" name="frm" method="post">
	<tr>
		<td><%= id %><input type="hidden" name="id" value="<%= id %>"></td>
		<td><textarea name="comment_contents"></textarea></td>
		<td><input type="hidden" name="space" value="<%= 8 %>">
		<input type="hidden" name="bnum" value="<%= bnum %>">
		<input type="submit" value="등록"></td>
	</tr>
	</form>
	</table>

</body>
</html>