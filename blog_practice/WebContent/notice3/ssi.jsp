<%@ page contentType="text/html; charset=UTF-8" %>
 
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
 
<%@ page import="beans2.NoticeDAO" %>
<%@ page import="beans2.NoticeVO" %>
 
<% 
request.setCharacterEncoding("utf-8"); 
 
DecimalFormat df = new DecimalFormat((char)65510 + " #,###,### " + (char)50896);
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String date = sdf.format(new Date());
%>
 
<%
NoticeDAO noticeDAO = new NoticeDAO();
%>