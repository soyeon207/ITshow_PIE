<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="db_conn.jsp"%>
	<%
		int total_num = 0;
	
	    String count_sql = "select count(*) from request_board";
	    pstmt = conn.prepareStatement(count_sql);
	    rs = pstmt.executeQuery();
	    
	    if(rs.next()){
	    	total_num = rs.getInt(1);
	    }
	    
	    String list_sql = "select * from request_board";
	    pstmt = conn.prepareStatement(list_sql);
	    rs = pstmt.executeQuery();
	%>
	<jsp:include page="nav.jsp"></jsp:include>
	<table class="board" border="1">
		<colgroup>
			<col class="c1">
			<col class="c2">
			<col class="c3">
			<col class="c4">
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<%
			
				if(total_num == 0){ %>
					<tr>
						<td colspan="4">게시물이 없습니다</td>
					</tr>
			<% }
			
				else {
						while(rs.next()){
						int board_no = rs.getInt("bnum");
						String title = rs.getString("title");
						String id = rs.getString("id");
						Timestamp date = rs.getTimestamp("date"); %>
						<tr>
							<td>숫자임</td>
							<td><a href="request_board_content.jsp?board_no=<%=board_no%>"><%= title %></a></td>
							<td><%= id %></td>
							<td><%= date %></td>
						</tr>
			<% 		} 
				}%>
				
				<tr>
					<td colspan="4">
						<form action="board_write.jsp" method="post">
							<input type="hidden" value="0" name="board_type">
							<input type="submit" value="글쓰기">
						</form>
					</td>
				</tr>
		</tbody>
	</table>
	<%
		if (rs != null) rs.close();
	    if (pstmt != null) pstmt.close();
	    if (conn != null) conn.close();
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>