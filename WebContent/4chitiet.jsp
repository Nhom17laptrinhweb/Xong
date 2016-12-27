<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>	
	<title>Chi Tiết Minh Chứng</title>
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
							<a class="navbar-brand" href="4chitiet.jsp">Chi tiết Minh Chứng</a>
						</div>
							<div class="collapse navbar-collapse navbar-ex1-collapse">
             					 <ul class="nav navbar-nav">
                		
                					
                              
             					 </ul>                     
          				  </div><!-- /.navbar-collapse -->
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						
											
						
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
	</div>
		<h3>Mục Minh Chứng : ${param.a}</h3><br>
		<form class="form-horizontal" id ="contactform" role="form" method="get" action="downloadFileServlet">			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Mã minh chứng</label>
			    <div class="col-sm-3">			    
			      <input type="" class="form-control" id="inputndg" placeholder="Mã minh chứng"name="mamc" value ="${param.f}">
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
			    <label for="inputPassword3" class="col-sm-3 control-label">fILE</label>
			    <div class="col-sm-3">
			      <input type="text"  id="" placeholder="" name="file" value ="${param.e}">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Link File</label>
			    <div class="col-sm-6">
			    <input type="submit" value="Download" href="" data-remote="false" class="btn btn-info">
			      
			    </div>			    
			  </div>	
			  			  
			  <div class="form-group">
			  <div class="col-sm-offset-2 col-sm-10">
			  
			  </div></div>											
				</form>
<jsp:include page="5thefoot.jsp"/>
</div>
</body>