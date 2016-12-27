<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
	<title>Admin_update</title>
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
		
		String sql = "SELECT * FROM  userdb ";
		
		ResultSet rec = s.executeQuery(sql);
		if(rec != null) {
			rec.next();
		%>
	<form name="frmUpdate" method="post" action="Admin_save.jsp?id<%=rec.getString("id")%>">	
		Update Form
			<table width="428" border="1">	
			<tr>
				<th width="181">
				<div align="left">id </div></th>
				<td><input type="text" name="id" size="20" value="<%=rec.getString("id")%>"></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">ms </div></th>
				<td><input type="text" name="ms" size="20" value="<%=rec.getString("ms")%>"></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">email </div></th>
				<td><input type="text" name="email" size="20" value="<%=rec.getString("email")%>"></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">pass </div></th>
				<td><input type="text" name="pass" size="20" value="<%=rec.getString("pass")%>"></td>
			</tr>

			</table> 
		<input type="submit" value="Save">
		</form> 
		
		<% }
	  		
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
