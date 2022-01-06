<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 1/5/2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Xóa Sản Phẩm</title>
</head>
<body>
<h1>  ***Xóa Sản Phẩm***</h1>

<form method="post">
    <h3>Bạn có muốn xóa</h3>

        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td>${requestScope["product"].getQuantity()}</td>
            </tr>
            <tr>
                <td>Color: </td>
                <td>${requestScope["product"].getColor()}</td>
            </tr>
            <tr>
                <td>Mota: </td>
                <td>${requestScope["product"].getMota()}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete product"></td>
            </tr>
        </table>

    <h1>
        <a href="/products">Quay lại trang chủ</a>
    </h1>
</form>
</body>
</html>
