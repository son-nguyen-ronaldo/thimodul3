<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 1/5/2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>

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
        <td>Category: </td>
        <td>${requestScope["product"].getNameCategory()}</td>
    </tr>
</table>

<h2>
    <a href="/products"> **Quay lại trang Sản Phẩm** </a>
</h2>
</body>
</html>
