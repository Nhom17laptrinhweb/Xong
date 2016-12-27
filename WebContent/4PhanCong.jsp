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
	<title>Phân Công Minh Chứng</title>
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
							<a class="navbar-brand" href="4PhanCong.jsp?Msg=${param.Msg }">Phân Công</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="4Trangchu_Dai.jsp?Msg=${param.Msg }"> Mục minh chứng</a></li>
								<li class="active"><a href="4KiemTra.jsp?Msg=${param.Msg }">Kiểm tra</a></li>
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
			    <c:when test ="${row.tinhtrang==0 }">
			    <li class='chudo'><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>
			      <c:otherwise>
			      <li><a href="4chitiet.jsp?a=${row.tenmc } &b=${row.nguoinhap} &c=${row.mota} &d=${row.nguoitao} &e=${row.linkfile} &f=${row.mamc}"><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'>Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:otherwise>
			     </c:choose>
			 </c:forEach>
		 
		
		</ul>
      
  	</div>
  </div>
  
 		<div class="col-md-8 ">
		<h2>Phân công nhiệm vụ nhập minh chứng</h2>
		
					<form class="form-horizontal" id ="contactform" role="form" method="post" action="4_phancong.jsp?Msg=${param.Msg }">
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-3 control-label">Mục minh chứng</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputmmc" placeholder="Mục minh chứng" name="mmc">
			      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Người được giao</label>
			    <div class="col-sm-6">
			      <input type="Email" class="form-control" id="inputndg" placeholder="Người được giao"name="ndg">
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
			    
			     <input href="" data-remote="false" id="btnphancong1" class="btn btn-info" type="submit" name="phancong" value="Phân Công" data-toggle="modal" data-target="#myModal">
				
				<div class="col-sm-offset-2 col-sm-10">
			  <font color="red" size="5"><c:if test="${not empty param.errMsg}">
           		 <c:out value="${param.errMsg}" />
			    </c:if>
			    </font>
			  </div>
				
				</form>
                 
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
			$("#btnphancong1").click(function()
			{
				if(!validateText("inputmmc"))
				{
					return false;
				}
				if(!validateText("inputndg"))
				{
					return false;
				}
				$("form#contactform").submit();
			});
		}
		);
</script>

<jsp:include page="5thefoot.jsp"/>

</body>
</html>