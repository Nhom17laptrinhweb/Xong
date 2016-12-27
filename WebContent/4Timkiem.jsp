<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE HTML>
 
<html lang="en">
<head>
  <title>Tìm Kiếm</title>
  <jsp:include page="5head.jsp"/> 
  <script src="http://core.angularjs.org/1.1.5/angular.js"></script>
</head>
<div class="container" >
<body>
    
<jsp:include page="5thehead.jsp"/>    
  <div id="container" >
    	<div id="main-content">
    		<div id="menu">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							
							<a class="navbar-brand" href="4Timkiem.jsp?Msg=${param.Msg }">Tim kiem</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								

															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>  
    <div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="btn-group" role="group">
		    <form method="post" name="frm" action="Search">
                
                                                                         
                <select class="btn-group" name="a">
					<option value="tenmc">Ten Minh Chung</option>
					<option value="nguoinhap">Nguoi nhap</option>
					<option value="mota">Mo Ta</option>
					<option value="tinhtrang">tinh trang</option>
				</select>
				      
                <input type="text" class="form-control" name="pid" placeholder="Search term...">
                <div class="btn-group" role="group">
	                <span class="input-group-btn">
	                    <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>Search</button>
	                </span>
	             </div>
                </form>
            </div>
        </div>
	</div>
</div>

<table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:teal">
                    <b>Minh Chung</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Ten Minh Chung</b></td>
                <td><b>Nguoi nhap</b></td>
                <td><b>Mo Ta</b></td>
                <td><b>Nguoi tao</b></td>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(3)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
  </table>
<jsp:include page="5thefoot.jsp"/>
</body>
</div>
</html>