<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Trang đăng ký</title>
  <!-- bootstraps CSS & JS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="resource/js/jquery-3.1.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- Customize -->
  <link rel="stylesheet" href="resource/css/style.css">
</head>
<div class="container">
<body>
  <div id="wrapper">
    <div id="head">
        <img class="logo" src="img/skpt.jpg" alt="logo">
        <div class="dangnhap">        
        </div>

    </div> <!-- ket thuc head -->
    </div>

    <div id="container" >
      <div id="main-content">
        <div id="menu">
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">

            </div>
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">            
            </div><!-- /.navbar-collapse -->
          </div>
        </nav>
      </div> <!-- ket thuc menu --> 
    </div>
    </div>
     
<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="Thông Báo" class="col-sm-5 control-label"><span style="font-size: 40px">Thông Báo:</span></label>
    
   </div>
   <div>
     <label for="Tạo Minh Chứng" class="col-sm-8 control-label"><span style="font-size: 30px">Đăng ký Thành Công.!!</span></label>
   </div>
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <div class="col-sm-6 control-label">
      
      <a href="TrangChu_Admin.jsp" ><input type="button" value="Về trang đăng nhập" class="btn btn-primary"></a>
    </div>
  
  
</form>

<jsp:include page="5thefoot.jsp"/>
</div>
</body>