<%-- 
    Document   : task
    Created on : Dec 13, 2018, 12:14:53 PM
    Author     : Warlock
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TASK JSP PAGE</title>
    </head>
    <body>

        <sql:setDataSource var="connexionDB"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/pizza_delivery"
        user="root" password=""/>

        <sql:query dataSource="${connexionDB}"
        var="result"> SELECT e_id, dob from user_details u WHERE dob>2000;
        </sql:query>
        
        <table border = "1" width = "100%">
         <tr>
            <th>ID</th>
            <th>Date of Birth</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.e_id}"/></td>
               <td> <c:out value = "${row.dob}"/></td>
            </tr>
         </c:forEach>
      </table>
        
        
        
        
        
        
        <h1>Hello World!</h1>

    </body>
</html>