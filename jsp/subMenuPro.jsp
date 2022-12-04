<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp"%>
<%!
	String mid;
	String title;
	String name;
	int price;
	String imgsrc;
	
%>
<%
	request.setCharacterEncoding("UTF-8");
	String code = request.getParameter("code");
	out.print(code);
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);
		if(code.equals("0"))
		{
			String sql = "SELECT * FROM PRODUCTS";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				mid = rs.getString(2);
				title = rs.getString(3);
				name = rs.getString(4);
				price = rs.getInt(6);
				imgsrc = rs.getString(7);
			}
		}
		
		else
		{
			String sql = "SELECT * FROM products WHERE code=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,code);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				mid = rs.getString(2);
				title = rs.getString(3);
				name = rs.getString(4);
				price = rs.getInt(6);
				imgsrc = rs.getString(7);
			}
		}
		// while(rs.next()){}  : 왜안될까? 

	}catch(SQLException ex){}

%>