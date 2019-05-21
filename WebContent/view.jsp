<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
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
OutputStream output = response.getOutputStream(); InputStream input = null; 
String sql ="";

try { 
	sql =" select FILE from found_images where bnum = 5 "; 
	pstmt = conn.prepareStatement(sql); 
	rs = pstmt.executeQuery(); 
	if (rs.next()) { 
		input = rs.getBinaryStream("FILE"); 
		int byteRead; 
			while((byteRead = input.read()) != -1) { 
			output.write(byteRead); 
			} 
			input.close(); 
		} 
	} catch(Exception e) { 
		out.print(e); 
	} finally { 
		try {if (rs != null) rs.close();} catch (Exception ex) {} 
		try {if (pstmt != null) pstmt.close();} catch (Exception ex) {} 
		try {if (conn != null) conn.close();} catch (Exception ex) {} 
	} 
input.close(); output.flush(); output.close();

%>
</body>
</html>