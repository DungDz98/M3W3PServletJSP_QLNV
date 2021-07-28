<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 7/28/2021
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Person</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<form action="/personServlet" method="post">
    <div class="container">
        <h2>Thêm nhân viên</h2>
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
            <tr>
                <td><input type="text" placeholder="Nhập mã" name="id"></td>
                <td><input type="text" placeholder="Nhập tên" name="name"></td>
                <td><input type="text" placeholder="Nhập địa chỉ" name="address"></td>
                <td><input type="text" placeholder="Nhập url ảnh" name="img"></td>
            </tr>
            </tbody>
        </table>
    </div>

    <button class="btn btn-success ml-3" type="submit">Create</button>
</form>
</body>
</html>
