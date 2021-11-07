<%-- 
    Document   : converter
    Created on : Nov 7, 2021, 6:29:35 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <%
        Double temp = Double.parseDouble(request.getParameter("temperature"));
        double celsius = 0;
        double fahrenheit = 0;
        if(request.getParameter("submit").equals("convert To celsius")){
        fahrenheit = temp;
        celsius = (fahrenheit - 32) * 5 / 9;
        }else if(request.getParameter("submit").equals("convert To fahrenheit")){
        celsius = temp;
        fahrenheit = (celsius * 9 / 5) + 32;
        };
    %>
    <body>
        <h1>Temperature</h1>
        <br>
        <h1><%out.print(celsius);%> °C</h1>
        <h1><%out.print(fahrenheit);%> °F</h1>
    </body>
</html>
