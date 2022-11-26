<%@ page import = "java.sql.*" %>
<%@ page import = "oracle.jdbc.driver.OracleDriver" %>
<%@ page import = "java.io.*" %>

<%-- 집이랑 학교랑 url, sqlplus 계정이다름, 여기서 바꿔서 사용하면 됨 --%>
<%
	String url = "jdbc:oracle:thin:@localhost:1521";
	String dbID = "admin";
	String dbPW = "xmatofkaus1";
%>


