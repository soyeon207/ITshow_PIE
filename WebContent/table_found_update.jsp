<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formChk(){
		var f = document.frm.f;
		var file = document.frm.file;
		var title = document.frm.title;
		var contents = document.frm.contents;
		
		if(title.value == ""){
			alert("제목을 입력하세요.");
			title.focus();
			return;
		}
		if(contents.value == ""){
			alert("내용을 입력하세요.");
			contents.focus();
			return;
		}
		
		file.value = f.value;
		
		frm.submit();
	}
</script>
</head>
<body>
<%@include file="db_conn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	int bnum = Integer.parseInt(request.getParameter("bnum"));
	String title ="";
	String contents = "";
	String id = "";
	String date = "";
	String img = "";
	
	String select_query = "select * from found_board where bnum="+bnum;
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery(select_query);
	if(rs.next()) {
		title = rs.getString("title");
		contents = rs.getString("contents");
		id = rs.getString("id");
		date = rs.getString("date");
		img = rs.getString("img");
	}
%>
<form action="proc_table_found_write.jsp" name="frm" method="post">
	<table>
		<tr>
			<td>
				<input type="text" id="title" name="title" value="<%= title %>">
			</td>
		</tr>
		<tr>
			<td>
				<textarea id="contents" name="contents"><%= contents %></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="file" id="f" name="f" value="<%= img %>">
				<input type="hidden" name="file">
			</td>
			
		</tr>
		<tr>
			<td>
				<input type="button" value="작성" onclick="formChk()">
				<input type="reset" value="다시">
			</td>
		</tr>
	</table>
</form>
</body>
</html>