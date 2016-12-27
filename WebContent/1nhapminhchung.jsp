<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Nhập Minh Chứng</title>
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
							<a class="navbar-brand" href="1nhapminhchung.jsp?Msg=${param.Msg }">Nhập Minh Chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								
								<li class="active"><a href="1xemmc.jsp?Msg=${param.Msg }">Xem Minh Chứng Được Giao</a></li>
								<li class="active"><a href="4Timkiem.jsp?Msg=${param.Msg }">Tìm Minh Chứng</a></li>
															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>
	

	<h1>Nhập Mục Minh Chứng</h1>

		
	<center>
	<!-- ten minh chung -->
	<form method="post" class="form-horizontal" role="form" action="uploadServlet" enctype="multipart/form-data">
	<div class="form-group">
	    <label for="Tên Minh Chứng" class="col-sm-4 control-label">Mã Minh Chứng:</label>
	    <div class="col-sm-4">
	      <input type="text" class="form-control" id="inputtmc" placeholder="Mã Minh Chứng" name ="mmc" value="${param.f}">
	    </div><!-- ten minh chung -->
	    <!-- mo ta -->
	  </div>
	  <div class="form-group">
	    <label for="Tên Minh Chứng" class="col-sm-4 control-label">Tên Minh Chứng:</label>
	    <div class="col-sm-4">
	      <input type="text" class="form-control" id="inputtmc" placeholder="Tên Minh Chứng" name ="tmc" value="${param.a}">
	    </div><!-- ten minh chung -->
	    <!-- mo ta -->
	  </div>
	  <div class="form-group">
	    <label for="Mô Tả" class="col-sm-4 control-label">Mô Tả:</label>
	    <div class="col-sm-4">
	      <input type="text" class="form-control" id="inputmota" placeholder="Mô Tả" name ="mota">
	    </div> 
	   </div> <!-- mo ta -->
   		<!-- file minh chung -->
	  <div class="form-group">
	   	<label type="" class="col-sm-4 control-label" name="photo">File Minh Chứng:</label>
	   	<div class="col-sm-2">
	   		<input type="file" id="" name="photo">
	   	</div>
	   	
	      
	  </div><!-- /input-group -->
	   <!-- file minh chung -->
	   <!-- nguoi nhap -->
	  <div class="form-group">
	    <label for="Người Nhập" class="col-sm-4 control-label">Người Nhập:</label>
	    <div class="col-sm-4">
	      <input type="text" class="form-control" id="inputnnn" placeholder="Người Nhập" name="nn"value="${param.b}">
	    </div>
	  </div><!-- nguoi nhap -->
    
   
  	<div class="col-sm-8 control-label">
      <input type="submit" value="Xong" class="btn btn-default" id ="btnxong">
      <font color="blue"><h3 ><%=request.getAttribute("Message")%></h3></font>
      
    </div>
		<font color="red" size="5"><c:if test="${not empty param.errMsg}">
      		<c:out value="${param.errMsg}" />
	    </c:if>
	    </font>
	    </form>
	</center>

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
				if(!validateText("inputmota"))
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
</body>