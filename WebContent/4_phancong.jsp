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
	<c:if test="${not empty param.mmc and not empty param.ndg}">
      <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/nhom17dbcl"
                       user="root" password="dosanhdai1"/>
 		
 		
      <sql:query dataSource="${snapshot}" var="selectQ">
        select count(*) as kount from mucminhchung
        where tenmc='${param.mmc}'	
        and nguoinhap='${param.ndg}'
      </sql:query>
 		
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.mmc}"/>
           	   
              <sql:update dataSource="${snapshot}" var="result">
	            INSERT INTO phancong(mmc,nguoidcgiao) VALUES (?,?);
	            <sql:param value="${param.mmc}" />
	            <sql:param value="${param.ndg}" />
	       	  </sql:update>	
               <c:redirect url="4PhanCong.jsp?Msg=${param.Msg }" >
              <c:param name="errMsg" value="Thành công" />
              </c:redirect>      	 		       	 	        	              	
          </c:when>
          <c:otherwise>
            <c:redirect url="4PhanCong.jsp?Msg=${param.Msg }" >
              <c:param name="errMsg" value="Mục minh chứng/người được giao chua dung" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
</body>
</html>