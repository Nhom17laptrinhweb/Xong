<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
		<c:choose>
		<c:when test="${not empty param.email and not empty param.pass and not empty param.qd}">
      		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/nhom17dbcl"
                       user="root" password="dosanhdai1"/>
             
             <sql:query dataSource="${snapshot}" var="selectQ">
        select count(*) as kount from userdb
        where email='${param.email}'	
        and pass='${param.pass}'
        and ms='${param.qd}'
        
      </sql:query>
        </c:when>
        <c:otherwise>
        	<c:redirect url="TrangChu_Admin.jsp" >
              <c:param name="Msg" value="Tên đăng nhập,mật khẩu hoặc quyền chưa đúng." />
            </c:redirect>
        </c:otherwise>
        </c:choose>
        
        <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="maso"
                   value="${param.qd}"/>
                   <c:if test="${maso == 1 }">
       			
       			
               <c:redirect url="2trangchuquydinh.jsp" >
              <c:param name="Msg" value="Hi ${param.email} " />
              </c:redirect>  
             	</c:if>	     
             	   	             
           	   <c:if test="${maso == 2 }">
       			
       			
               <c:redirect url="4Trangchu_Dai.jsp" >
              <c:param name="Msg" value="Hi ${param.email} " />
              </c:redirect>  
              
             	</c:if>	 
             	<c:if test="${maso == 3}">
       			
       			
               <c:redirect url="1xemmc.jsp" >
              <c:param name="Msg" value="${param.email}"/>
              </c:redirect>  
             	</c:if>	 
             	
             	<c:if test="${maso == 4}">
       			
       			
               <c:redirect url="3Trangchu_Minh.jsp" >
              <c:param name="Msg" value="Hi ${param.email} " />
              </c:redirect>  
             	</c:if>	 
             	       	                    	                    	              	
          </c:when>
          <c:otherwise>
            <c:redirect url="TrangChu_Admin.jsp" >
              <c:param name="Msg" value="Tên đăng nhập hoặc mật khẩu chưa đúng." />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
</body>
</html>