<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
	<title>ThaiCreate.Com JSP Tutorial</title>
</head>
<body>
	
	<%	
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		connect =  DriverManager.getConnection("jdbc:mysql://localhost:3306/nhom17dbcl" +
				"?user=root&password=1234");
		
		s = connect.createStatement();
		
		String id = request.getParameter("id");
		String ms = request.getParameter("ms");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");

		
		
		String sql = "UPDATE userdb " +
				"SET id = '"+ id + "' " +
				", ms = '"+ ms + "' " +
				", email = '"+ email + "' " +
				", pass = '"+ pass + "' " +
				" WHERE id = '" + id + "' ";
         s.execute(sql);
        
         out.println("Record Update Successfully");
	  		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>
</body>
</html>
