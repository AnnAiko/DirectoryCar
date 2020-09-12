<%-- 
    Document   : statistics
    Created on : 10.09.2020, 17:46:37
    Author     : User
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            A {
                text-decoration: none; /* Убирает подчеркивание для ссылок */
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Statistics</h1>
        Number of records: 
        <%
            int rows = (int) request.getAttribute("countRow");
            out.println(rows);
        %>
        <br>
        Number of columns: 
        <%
            int columns = (int) request.getAttribute("countСolumn");
            out.println(columns);
        %>
        <br>
        Date added first entry: 
        <%
            Date first = (Date) request.getAttribute("dateFirst");
            out.println(first);
        %>
        <br>
        Date added last entry: 
        <%
            Date last = (Date) request.getAttribute("dateLast");
            out.println(last);
        %>
        <br>
        <br>
        <a href='/testTask/'>&larr; </a>
    </center>
</body>
</html>
