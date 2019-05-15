<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Connection conn = null;
PreparedStatement pstmt = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:mysql://10.96.124.188/lost_and_found";
String url = "jdbc:mysql://10.96.124.188:3306/lost_and_found?serverTimezone=UTC&useSSL=false";
String db_id = "mirim";
String db_pw ="0000";

Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,db_id,db_pw);

%>