<%-- 
    Document   : addCar
    Created on : 10.09.2020, 17:20:59
    Author     : User
--%>

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
        <script src="ajax.js" type="text/javascript"></script>
    </head>
    <body>
    <center>
        <h3>Add a car</h3>
        <form >
            Number: <input name="number" />
            <br><br>
            Brand: <select name="brand">
                <% //action = 'add' method = 'POST' id='my_form'
                    ArrayList<String> listBrands = new ArrayList<String>();
                    listBrands = (ArrayList<String>) request.getAttribute("brand");
                    for (int i = 0; i < listBrands.size(); i++) {
                        out.println("<option name='brands'>" + listBrands.get(i) + "</option>");
                    }
                %>
            </select>
            <br><br>
            Color: <select name="color">
                <%
                    ArrayList<String> listColors = new ArrayList<String>();
                    listColors = (ArrayList<String>) request.getAttribute("color");
                    for (int i = 0; i < listColors.size(); i++) {
                        out.println("<option>" + listColors.get(i) + "</option>");
                    }
                %>
            </select>
            <br><br>
            Year manufacture: <select name="year">
                <%
                    int[] years = new int[]{1995, 1996, 1997, 1998, 1999, 2000,
                        2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009,
                        2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018,
                        2019, 2020};
                    for (int i = 0; i < years.length; i++) {
                        out.println("<option >" + years[i] + "</option>");
                    }
                %>
            </select>
            <br><br>
            Producing country: <select name="country">
                <%
                    ArrayList<String> listCountries = new ArrayList<String>();
                    listCountries = (ArrayList<String>) request.getAttribute("country");
                    for (int i = 0; i < listCountries.size(); i++) {
                        out.println("<option>" + listCountries.get(i) + "</option>");
                    }
                %>
            </select>
            <br><br>
            Owner: <br>
            First name: <input name="firstName" />
            <br><br>
            Last name: <input name="lastName" />
            <br><br>
            Address: <input name="address" />
            <br><br>
            Phone: <input name="phone" />
            <br><br>
            Date birth:<br>
            Day: <select name="day">
                <%
                    for (int i = 1; i <= 31; i++) {
                        out.println("<option >" + i + "</option>");
                    }
                %>
            </select>
            Month:  <select name="month">
                <%  String[] month = new String[]{"Январь", "Февраль", "Март",
                        "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь",
                        "Октябрь", "Ноябрь", "Декабрь"};
                    for (int i = 0; i < month.length; i++) {
                        out.println("<option >" + month[i] + "</option>");
                    }
                %>
            </select>
            Year: <select name="years">
                <%
                    for (int i = 0; i < years.length; i++) {
                        out.println("<option >" + years[i] + "</option>");
                    }
                %>//name='send'
            </select>
            <br><br>
            <script>

            </script>
            <p> <input type = 'button' value = 'Add' id='ajaxbutton'>

        </form>
        <a href='/testTask/'>&larr; </a>
    </center>
</body>

</html>
