<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
	<title>Admin</title>
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
		
		String sql = "SELECT * FROM  userdb ORDER BY id ASC";
		
		ResultSet rec = s.executeQuery(sql); 	
		%>
		<table width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">id </div></th>
		    <th width="98"> <div align="center">ms </div></th>
		    <th width="198"> <div align="center">email </div></th>
		    <th width="97"> <div align="center">password </div></th>


		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("id")%></div></td>
				    <td><%=rec.getString("ms")%></td>
				    <td><%=rec.getString("email")%></td>
				    <td><%=rec.getString("pass")%></td>
				  </tr>
	       	<%}%>
	  	</table>      
	    <%	
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
