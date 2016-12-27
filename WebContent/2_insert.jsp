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
            INSERT INTO mucminhchung(tenmc,mota,nguoinhap,nguoitao,tinhtrang) VALUES (?,?,?,?,0);
	            <sql:param value="${param.mmc}" />
	            <sql:param value="${param.mt}" />
	            <sql:param value="${param.nn}" />
	            <sql:param value="${param.nt}" />
                        
        </sql:update>
        <c:redirect url="2taomc.jsp?Msg=${param.Msg }" >
              <c:param name="errMsg" value="Thành công" />
              </c:redirect> 
    </body>
</html>