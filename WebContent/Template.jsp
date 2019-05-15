<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	String contentpage = request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미림 분실물 센터</title>
</head>
<body>
<table width=100% height=100% border=0 cellpadding=0 cellspacing=0>
	<tr>
		<td>
		<jsp:include page="nav.jsp" flush="false"></jsp:include>
		</td>
		
	</tr>
	
	<tr>
		<td>
		<jsp:include page="<%=contentpage %>" flush="false"></jsp:include>
		</td>
	</tr>
	

</table>
</body>
</html>