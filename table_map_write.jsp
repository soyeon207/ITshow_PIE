<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>
				<input type="text" name="title">
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="contents"></textarea>
			</td>
		</tr>
		<tr>
			<td><input type="file" name="img" multiple="multiple"></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="작성">
				<input type="reset" value="다시">
			</td>
		</tr>
	</table>
</form>
</body>
</html>