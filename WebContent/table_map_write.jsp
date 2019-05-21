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
<%
	request.setCharacterEncoding("utf-8");
	int space = 1;
%>
<form action="proc_table_map_write.jsp" name="frm" method="post">
	<table>
		<tr>
			<td>
				<input type="text" id="title" name="title">
			</td>
		</tr>
		<tr>
			<td>
				<textarea id="contents" name="contents"></textarea>
				<input type="hidden" name="space" value="<%= space %>">
			</td>
		</tr>
		<tr>
			<td>
				<input type="file" id="f" name="f">
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