	<%@ page import ="java.sql.*" %>
<%
	String ms = request.getParameter("ms");
    String email = request.getParameter("email");    
    String pass = request.getParameter("pass");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nhom17dbcl",
            "root", "dosanhdai1");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into userdb(ms, email, pass) values ('" + ms + "','" + email + "','" + pass + "')");
    if (i > 0) {
        response.sendRedirect("Dangkythanhcong.jsp");

    }
%>