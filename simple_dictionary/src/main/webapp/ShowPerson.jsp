<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.Person" %><%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/28/2021
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

    </style>
</head>
<body>
<div class="container">
    <h2>Danh sách nhân viên xưởng xe</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Mã nhân viên</th>
            <th>Tên nhân viên</th>
            <th>Địa chỉ</th>
            <th>Ảnh minh họa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listPerson}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.address}</td>
                <td>${p.img}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/CreatePerson.jsp" class="btn btn-success ml-3">Create</a>
</div>
<tr>

<%--        <%--%>
<%--            ArrayList<Person> list = (ArrayList<Person>) request.getAttribute("listPerson");--%>
<%--            String str = "";--%>
<%--            for (Person p: list) {--%>
<%--                str += "<tr> <td>" + p.getId() + "</td><td>" + p.getName() + "</td><td>" + p.getAddress() + "</td><td>" + p.getImg() + "</td></tr>";--%>
<%--            }--%>
<%--            out.println(str);--%>
<%--        %>--%>

</body>
</html>
