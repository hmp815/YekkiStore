<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "./oracleAccount.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String LoginID = (String)session.getAttribute("LoginID");
    String title = request.getParameter("ptitle");
    String name = request.getParameter("pname");
    String category = request.getParameter("pcategory");
    String explain = request.getParameter("pex");
    int price = Integer.parseInt(request.getParameter("price"));
    <!-- String file = request.getParameter("pfile"); -->

    out.println(title);
    out.println(name);
    out.println(category);
    out.println(explain);
    out.println(price);
    <!-- out.println(file); -->
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url,dbID,dbPW);

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM products");
        rs.next(); 
        int cnt = rs.getInt(1);

        string sql = "INSERT INTO products VALUES(?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.perpareStatement(sql);

        pstmt.setString(1, String(cnt));
        pstmt.setString(2, title);
        pstmt.setString(3, category);
        pstmt.setString(4, name);
        pstmt.setString(5, price);
        pstmt.setString(6, LoginID);
        <!-- pstmt.setString(7, ); -->
        
        pstmt.close();
        rs.close();
        stmt.close();
        conn.close();
    }
    catch(SQLException ex){
        ex.printStackTrace();
    }

%>

<!-- create table products(
	productID varchar2(10),
	memberID varchar2(20) NOT NULL,
	code varchar2(5),
	pro_title varchar2(50),
	productName varchar2(10) NOT NULL,
	price int NOT NULL,
	image varchar2(20),
	constraint products_pk primary key(productID),	
	constraint products_fk foreign key(memberID) references member
); -->