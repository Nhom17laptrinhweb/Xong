<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/nhom17dbcl"
                           user="root"  password="dosanhdai1"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE mucminhchung SET  mota=?
            WHERE mamc='${param.mamc}'         
            <sql:param value="${param.mt}" />            
        </sql:update>
        <c:choose>
        <c:when test="${count>=1}">
            <c:redirect url="1nhapthanhcong.jsp" >  
            <c:param name="errMsg" value="Thành công" /> 
            </c:redirect>  
        </c:when>
        <c:otherwise>
        <c:redirect url="2suamc.jsp" >
              <c:param name="errMsg" value="Update không thành công" />
            </c:redirect>
         </c:otherwise>
         </c:choose>
    </body>
</html>