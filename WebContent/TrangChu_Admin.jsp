<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html>
<html lang="en">
<head> 
  <title>Trang Chủ Minh Chứng Đảm Bảo Chất Lượng</title>
  <jsp:include page="5head.jsp"/>
</head>
<div class="container">
<body>
  <div id="wrapper">
    <div id="head">
        <img class="logo" src="img/skpt.jpg" alt="logo">
        <div class="dangnhap">
          <a href="2dangky.jsp"><input class="btn btn-info" type="button" name="dangxuat" value="Đăng ký"> <br></a>
          <a href="Admin_update.jsp"><input class="btn btn-info" type="button" name="dangxuat" value="Admin"> <br></a>
          <h4></h4>
        </div>

    </div> <!-- ket thuc head -->
  </div>


  <div id="container">
    <div id="main-container">
      <div class="col-md-4 col-md-offset-8 col-md-pull-7">
      <div class="panel panel-default">
      <div class="panel-body">
      <form class="form-horizontal" role="form" method="post" action="4_quyen.jsp">
            <div>
             <label ><input type="radio" name="qd" value="1" ><font color="blue">Người quy định minh chứng</font></a></label>
            </div>
            <div>
              <label ><input type="radio" name="qd" value="2"><font color="blue">Người giao việc nhập minh chứng</font></a></label>
            </div>
            <div>
              <label ><input type="radio" name="qd" value="3"><font color="blue">Người nhập minh chứng</font></a></label>
            </div>
            <div>
              <label ><input type="radio" name="qd" value="4"><font color="blue">Người kiểm tra minh chứng</font></a></label>
            </div>
            
   	</div>
  	</div> 
   	</div>  
   </div>
  
    <!-- ten dang nhap -->
    
    <div class="main-container">
    
    <form class="form-horizontal" role="form" action="4_quyen.jsp">
    <div class="form-group">
      <label for="Tên Đăng nhập" class="col-md-12 control-label">Tên Đăng nhập:</label>
      <div class="col-md-2">
        <input type="text" class="form-control" id="Tên Đăng nhập" placeholder="Tên đăng nhập" name= "email">
      </div>
    </div> <!-- ten dang nhap -->
    <!-- mật khẩu-->
    <div class="form-group">
      <label for="Mật khẩu" class="col-md-12 control-label">Mật khẩu:</label>
      <div class="col-md-2">
        <input type="password"  class="form-control" id="Mật Khẩu" placeholder="Mật khẩu" name ="pass">
      </div>
    </div> <!-- mat khau -->
	<br>
		
    <div class="col-md-12 control-label">
    <br>	    
        <a><input type="submit" value="Đăng nhập" class="btn btn-primary"></a>
        <span class="glyphicon-class">Quên mật khẩu?</span><font color="red" size="5">
		        <c:out value="${param.Msg}" />					  
			</font>
    </div>  
    </form>
  
</div>
</div>
 
<jsp:include page="5thefoot.jsp"/> 
 </div>
</body>