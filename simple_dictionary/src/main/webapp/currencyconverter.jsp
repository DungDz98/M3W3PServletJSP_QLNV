<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/28/2021
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
</head>
<body>
<h2>Currency Converter</h2>
<form method="get" action="/converter.jsp">
    <label>Rate: </label><br>
    <input type="text" name="rate" placeholder="RATE" value="22000"><br>
    <label>USD: </label><br>
    <input type="text" name="usd" placeholder="USD" value="0"><br>
    <input type="submit" id="submit" value="Converter">
</form>
</body>
</html>
