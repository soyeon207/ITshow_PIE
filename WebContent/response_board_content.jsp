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
	int board_no = Integer.parseInt(request.getParameter("board_no"));
    String list_sql = "select * from response_board where bnum="+board_no;
    pstmt = conn.prepareStatement(list_sql);
    rs = pstmt.executeQuery();
    
    String title=null, contents = null, id=null;
    Timestamp date = null;
    
    if(rs.next()){
	    title = rs.getString("title");
	    contents = rs.getString("contents");
		id = rs.getString("id");
		date = rs.getTimestamp("date");
    }
%>
<table border="1">
	<thead>
		<tr>
			<th>제목</th>
			<td colspan="3"><%=title%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=id%></td>
			<th>작성일자</th>
			<td><%=date%></td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="4"><%=contents%></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td>
				<input type="button" value="수정">
				<input type="button" value="삭제">
			</td>
		</tr>
	</tfoot>
</table>
	<%
		if (rs != null) rs.close();
	    if (pstmt != null) pstmt.close();
	    if (conn != null) conn.close();
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>