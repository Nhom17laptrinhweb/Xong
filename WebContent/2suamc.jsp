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
	<title>Sửa Mục Minh Chứng</title>
	<jsp:include page="5head.jsp"/>
</head>
<body>
<jsp:include page="5thehead.jsp"/>
<div class="container">
    <div id="container" >
    	<div id="main-content">
    		<div id="menu">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							
							<a class="navbar-brand" href="2suamc.jsp?Msg=${param.Msg }">Sửa Mục Minh Chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="2taomc.jsp?Msg=${param.Msg }"> Tạo Mục Minh Chứng</a></li>
								<li class="active"><a href="2xem.jsp?Msg=${param.Msg }">Xem Mục Minh Chứng</a></li>
								<li class="active"><a href="4Timkiem.jsp?Msg=${param.Msg }">Tìm Mục Minh Chứng</a></li>

															
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
			    <c:when test ="${row.tinhtrang==0 }">
			    <li class='chudo'><a href="2suamc.jsp?a=${row.tenmc } &b=${row.nguoinhap} &c=${row.mota} &d=${row.nguoitao} &e=${row.linkfile} &f=${row.mamc} &Msg=${param.Msg }"><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="2suamc.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="1doantruong.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>
			      <c:otherwise>
			      <li><a href="2suamc.jsp?a=${row.tenmc } &b=${row.nguoinhap} &c=${row.mota} &d=${row.nguoitao} &e=${row.linkfile} &f=${row.mamc} &Msg=${param.Msg }"><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'>Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="1doantruong.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:otherwise>
			      </c:choose>
			    </c:forEach>
			</div>
			</div>      
		    
		  <div class="col-md-8 ">
		<h3>Mục Minh Chứng : ${param.a}</h3><br>
		<form class="form-horizontal" id ="contactform" role="form" method="post" action="4_update.jsp">			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Mã minh chứng</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Mã minh chứng"name="mamc" value ="${param.f}">
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Tên minh chứng</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Tên minh chứng"name="tenmc" value ="${param.a}">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Người nhập</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Người nhập"name="nn" value ="${param.b}">
			    </div>
			  </div>		  	  		
			    
			    <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Mô tả</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Mô tả"name="mt" value ="${param.c}">
			    </div>
			  </div>
			  	
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Người tạo</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Người tạo"name="nt" value ="${param.d}">
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Link File</label>
			     <div class="form-group">
				    
				    <div class="col-sm-2">
   						<input type="file" id="exampleInputFile">
   					</div>
				  </div>
			  </div>	
			  
			  <div class="form-group">
			  <div class="col-sm-offset-2 col-sm-10">
			  <input type="submit" value="Update" class="btn btn-info"/>
			  <font color="red" size="5"><c:if test="${not empty param.errMsg}">
           		 <c:out value="${param.errMsg}" />
			    </c:if>
			    </font>
			  </div></div>											
				</form>
				
		</ul>
      
  	</div>
  </div>
  
 
  
  
<jsp:include page="5thefoot.jsp"/>
</div>	
</body>