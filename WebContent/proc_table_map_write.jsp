<%@page import="java.sql.Timestamp"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db_conn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	String file_url = request.getParameter("file");
	String contents = request.getParameter("contents");
	String title = request.getParameter("title");
	int space = Integer.parseInt(request.getParameter("space"));
	Timestamp date = new Timestamp(System.currentTimeMillis());
	
	String file_query = "insert into found_images (bnum, file) VALUES (?, ?)";
	String board_query = "insert into found_board (title, contents, date, space, id, d_day) value (?, ?, ?, ?, ?, 7)";
	
	try{ 
		//파일 -> db저장
		File imgfile = new File(file_url); 
		FileInputStream fin = new FileInputStream(imgfile); 
		pstmt = conn.prepareStatement(file_query); 
		pstmt.setInt(1,4); 
		pstmt.setBinaryStream(2,fin,(int)imgfile.length());//Stream형의 파일 업로드 
		pstmt.executeUpdate(); 
		System.out.println("Inserting Fileboard Successfully!"); 
		
		//board내용 -> db저장
		pstmt = conn.prepareStatement(board_query); 
		pstmt.setString(1,title); 
		pstmt.setString(2,contents); 
		pstmt.setTimestamp(3,date);
		pstmt.setInt(4,1);
		pstmt.setString(5,"아이디");
		pstmt.executeUpdate(); 
		
		System.out.println("Inserting Board Successfully!"); 
		pstmt.close(); 
		conn.close(); 
		} 
	catch (Exception e){ 
		System.out.println(e.getMessage()); 
	} 

%>
<jsp:forward page="table_map?space=<%= space %>"/>