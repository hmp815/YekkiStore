<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);

		PreparedStatement ps;
        ResultSet rs;

        //StringBuffer buf = new 

        ps = conn.prepareStatement("select img from products");
        rs = ps.executeQuery();

        if(rs.next()){
            InputStream is = rs.getBinaryStream(1);

            int c;
           // while ((c = is.read()) != -1)
                //buf.append((char)c);
        }
        rs.close();
        ps.close();
        conn.close();
	} catch(SQLException ex){}
	%>

<!-- create table products(
	productID int,
	memberID varchar2(30),
	title varchar2(200),
	productName varchar2(200),
	Explanation varchar2(800),
	code varchar2(5),
	price int,
	img blob,
	constraint products_pk primary key(productID),	
	constraint products_fk foreign key(memberID) references member
); -->