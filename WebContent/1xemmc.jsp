<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Xem Minh Chứng</title>
	<jsp:include page="5head.jsp"/>
</head>
<div class="container">
<body>
<jsp:include page="5thehead.jsp"/>
<div id="container" >
    	<div id="main-content">
    		<div id="menu">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="1xemmc.jsp?Msg=${param.Msg }">Xem minh chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="1nhapminhchung.jsp?Msg=${param.Msg }"> Nhập minh chứng</a></li>						
								<li class="active"><a href="4Timkiem.jsp?Msg=${param.Msg }">Tìm kiếm</a></li>
															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
</div>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/nhom17dbcl"
     user="root"  password="dosanhdai1"/>
 
	<sql:query dataSource="${snapshot}" var="result">
	SELECT * from mucminhchung;
	</sql:query>
<div class="row">
 <div class="col-md-4 ">
 		 <!-- cay -->
	<div id="jstree">			
	    <!-- in this example the tree is populated from inline HTML -->
	    <ul>	    
			    <c:forEach var="row" items="${result.rows}">
			    <c:choose>
			    <c:when test ="${row.nguoinhap eq param.Msg}">
			    <li><a href="1nhapminhchung.jsp?a=${row.tenmc } &b=${row.nguoinhap} &c=${row.mota} &d=${row.nguoitao} &e=${row.linkfile} &f=${row.mamc} &Msg=${param.Msg }"><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'>Người nhập : 
			      <c:out value="${param.Msg}"/></td></a></li>
			          <li><a href="">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>			      
			      </c:choose>
			    </c:forEach>		 		
		</ul>     
  	</div>
  </div>
  
<jsp:include page="5thefoot.jsp"/>
</div>
</body>
</html>