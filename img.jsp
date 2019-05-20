<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db_conn.jsp"%>
<%
try{ 
	File imgfile = new File("d:\\images.jpg"); 
	FileInputStream fin = new FileInputStream(imgfile); 
	PreparedStatement pre = conn.prepareStatement("insert into found_images (bnum, FILENAME, FILE) VALUES (?, ?, ?)"); 
	pre.setInt(1,5); 
	pre.setString(2,"Durga"); 
	pre.setBinaryStream(3,fin,(int)imgfile.length());//Stream형의 파일 업로드 
	pre.executeUpdate(); 
	System.out.println("Inserting Successfully!"); 
	pre.close(); 
	conn.close(); 
	} catch (Exception e){ System.out.println(e.getMessage()); } 

%>