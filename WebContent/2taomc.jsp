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
	<title>Tạo Minh Chứng</title>
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
							
							<a class="navbar-brand" href="2taomc.jsp?Msg=${param.Msg }">Tạo Mục Minh Chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="2trangchuquydinh.jsp?Msg=${param.Msg }">Xem Mục Minh Chứng</a></li>
								<li class="active"><a href="2suamc.jsp?Msg=${param.Msg }">Sửa Mục Minh Chứng</a></li>
								<li class="active"><a href="4Timkiem.jsp?Msg=${param.Msg }">Tìm Mục Minh Chứng</a></li>

															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
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
			    <li class='chudo'><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="2chitietthuvien.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>
			      <c:otherwise>
			      <li><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="2chitietcantin.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:otherwise>
			      </c:choose>
			    </c:forEach>		 		
		</ul>
      	</div>
  	</div> 

 <div class="col-md-8">		 
		
		<h1>Tạo Mục Minh Chứng</h1>
	
				<div>
				<form class="form-horizontal" id ="contactform" role="form" method="post" action="2_insert.jsp?Msg=${param.Msg }">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-3 control-label">Tên Mục minh chứng</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputmmc" placeholder="Mục minh chứng" name="mmc">
				      
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Mô Tả</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputndg" placeholder="Mô Tả"name="mt">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">File Minh Chứng</label>
				    <div class="col-sm-2">
   						<input type="file" id="exampleInputFile">
   					</div>
				  </div>
				   <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Người Nhập</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputnn" placeholder="Người Nhập"name="nn">
				    </div>
				  </div>
				  				 
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Người Tạo</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputnt" placeholder="Người Tạo"name="nt">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label>
				         
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
									    
				     <input href="" data-remote="false" id="btnxong" class="btn btn-info" type="submit" name="tmc" value="Xong" data-toggle="modal" data-target="#myModal">
						<font color="red">
	           			 <c:out value="${param.errMsg}" />			   		 
				    	</font>
				    </div>
				  </div>
				</form>
				</div>
				</div>
		
		</div>
</div>

<script>
	function validateText(id) {
		if($("#"+id).val()=="")
		{
			var div = $("#"+id).closest("div");
			div.removeClass("has-success");
			div.addClass("has-error has-feedback");
			$("#glypcn"+id).remove();
			div.append('<span id = "glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');

			return false;
		}
		else
		{
			var div = $("#"+id).closest("div");
			div.removeClass("has-error ");
			$("#glypcn"+id).remove();
			div.addClass("has-success has-feedback");
			div.append('<span id = "glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>');
			return true;
		}
	}
	$(document).ready(
		function()
		{
			$("#btnxong").click(function()
			{
				if(!validateText("inputmmc"))
				{
					return false;
				}
				if(!validateText("inputnn"))
				{
					return false;
				}
				if(!validateText("inputnt"))
				{
					return false;
				}
				
				$("form#contactform").submit();
			});
		}
		);
</script>

<jsp:include page="5thefoot.jsp"/>
</div>
</div>	
</body>