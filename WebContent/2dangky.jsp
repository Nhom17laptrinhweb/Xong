<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Đăng ký</title>
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
							
								<span class="sr-only"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="taominhchung.jsp"></a>
						</div>

						<div class="collapse navbar-collapse navbar-ex1-collapse">
											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>
	
	<h1>Form đăng ký</h1>

<div>
	<center>
	<!-- ten minh chung -->
	<form class="form-horizontal" role="form" method="post" action="registration.jsp">
	  	<div class="form-group">
	    <label for="Tên đăng nhập" class="col-sm-4 control-label">Tên đang nhập:</label>
	    <div class="col-sm-4">
	      <input type="text" class="form-control" name="email" placeholder="Tên đăng nhập" id = "inputem">
	    </div>
	    <!-- mo ta -->
	  	</div>
	  	
	  	<div class="form-group">
	    <label for="Mật khẩu" class="col-sm-4 control-label">Mật khẩu:</label>
	    <div class="col-sm-4">
	      <input type="password" class="form-control" name="pass" placeholder="Mật khẩu" id = "inputpass">
	      </div> 
	   	</div> 
	
	 	<div class="form-group">
	    <label for="Chức vụ" class="col-sm-4 control-label">Chức vụ:</label>
	    <div class="col-sm-4">
	      <input type="Chức vụ" class="form-control"  name="ms" placeholder="Chức vụ"  id = "inputms">
	    </div>
	   	</div>
	   	
	 	<div class="col-sm-8 control-label">
	      <input type="submit" id ="btnxong" value="Xong" class="btn btn-info">
	    </div>
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
				if(!validateText("inputem"))
				{
					return false;
				}
				if(!validateText("inputpass"))
				{
					return false;
				}
				if(!validateText("inputms"))
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