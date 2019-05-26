<%@page import="java.sql.Timestamp"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db_conn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	int space = Integer.parseInt(request.getParameter("space"));
	int bnum = Integer.parseInt(request.getParameter("bnum"));
	int cnum = Integer.parseInt(request.getParameter("cnum"));
	
	String delete_query = "delete from found_comment where space = "+space+" and bnum = "+bnum+" and cnum = "+cnum;
	
	try{
	
	pstmt = conn.prepareStatement(delete_query);
	pstmt.executeUpdate();
	}
	catch(SQLException e){
		System.out.println(e.getMessage());
	}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
	response.sendRedirect("table_found_content.jsp?space="+space);
	}
%>