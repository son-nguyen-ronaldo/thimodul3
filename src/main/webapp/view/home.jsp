<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 1/5/2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
    <h1>  Trang Sản Phẩm </h1>
</div>



    <table class="table table-striped">
        <thead>
        <tr>
            <td>Name</td>
            <td>Price</td>
            <td>Quantity</td>
            <td>Color</td>
            <td>Mota</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getPrice()}</td>
                <td>${product.getQuantity()}</td>
                <td>${product.getColor()}</td>
                <td>${product.getMota()}</td>
                <td><button type="button" class="btn btn-warning" ><a href="/products?action=edit&id=${product.getId()}" > Sửa</a></button ></td>
                <td><button type="button" class="btn btn-danger"><a href="/products?action=delete&id=${product.getId()}">Xóa</a></button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </br>
    </br>
    <h3>
        <a href="/products?action=create">** Thêm Mới Sản Phẩm **</a>
    </h3>

    <form action="/products?action=search" class="s-search" method="post">
        <input type="text" name="name" placeholder="Search..."/>
        <input type="submit" value="Find"/>
    </form>
</div>
</body>
</html>

