<%-- 
    Document   : outListCar
    Created on : 10.09.2020, 17:26:59
    Author     : User
--%>

<%@page import="pojo.Car"%>
<%@page import="java.util.ArrayList"%>
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
        <script src="http://code.jquery.com/jquery-2.2.4.js" type="text/javascript"></script>

    </head>
    <body>
    <center>
        <h3>List cars</h3>
        <table cellspacing="10" border="1">
            <tr>
                <th>Number</th>
                <th>Brand</th>
                <th>Color</th>
                <th>Year</th>
                <th>Country</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Date Birth</th>
                <th>Date Add</th>
                <th>&nbsp;</th>
            </tr>
            <tr>
                <%

                    ArrayList<Car> list = new ArrayList<Car>();
                    list = (ArrayList<Car>) request.getAttribute("car");
                    for (int i = 0; i < list.size(); i++) {
                        out.println("<tr>\n"
                                + "<td>" + list.get(i).getNumber() + "</td>"
                                + "<td>" + list.get(i).getBrand() + "</td>"
                                + "<td>" + list.get(i).getColor() + "</td>"
                                + "<td>" + list.get(i).getYear() + "</td>"
                                + "<td>" + list.get(i).getCountry() + "</td>"
                                + "<td>" + list.get(i).getOwner().getFirstName() + "</td>"
                                + "<td>" + list.get(i).getOwner().getLastName() + "</td>"
                                + "<td>" + list.get(i).getOwner().getAddress() + "</td>"
                                + "<td>" + list.get(i).getOwner().getPhone() + "</td>"
                                + "<td>" + list.get(i).getOwner().getDataBirth() + "</td>"
                                + "<td>" + list.get(i).getDate() + "</td>"
                                + "<td><form action='deleteCar'method='POST'> " //
                                + "<p><button type='submit' value=" + list.get(i).getIdCar() + " name='delete' >delete</button> </p></form></td>"
                                + "</tr>");//action = 'test' method = 'POST'
                    }
                %>
            </tr>
        </table>
        <a href='/testTask/'>&larr; </a>
    </center>
</body>
</html>
