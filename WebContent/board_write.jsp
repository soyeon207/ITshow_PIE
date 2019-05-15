<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
	int board_type = Integer.parseInt(request.getParameter("board_type"));
%>
</head>
<body>

	<form action="board_write_proc.jsp" method="post" name="frm">
		<table border=1>
			<colgroup>
				<col class="col">
				<col class="col">
			</colgroup>
			<thead>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
					<td>
						<select name="board_type">
						<% if(board_type == 0){ %>
							<option value="0" selected>찾습니다</option>
							<option value="1">찾아가세요</option>
						<% }
							else{ %>
							<option value="0">찾습니다</option>
							<option value="1" selected>찾아가세요</option>
						<% } %>
						</select>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>내용</td>
					<td colspan="2"><textarea name="contents" form="frm"></textarea></td>
				</tr>
				<tr>
					<td colspan="3"><input type="file"></td>
				</tr>
				<tr>
					<td colspan="3">
					<input type="reset" value="다시">
					<input type="submit" value="작성">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>