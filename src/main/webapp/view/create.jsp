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
    <title>  ***Thêm Mới***</title>
    <style>
        .message {
            color: springgreen;
        }
        .p{
            color: red;
        }
    </style>
</head>
<body>
<h1 >    ***Thêm Mới Sản Phẩm***  </h1>

<p>
    <c:if test="${requestScope['message']!=null}">
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>

<form method="post">

        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td><input type="text" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>Color: </td>
                <td><input type="text" name="color" id="color"></td>
            </tr>
            <tr>
                <td>Mota: </td>
                <td><input type="text" name="mota" id="mota"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <select name="idCategory">
                        <c:forEach items="${categories}" var="c">
                            <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>

    <h1>
        <a href="/products" > **Quay Lại Trang Sản Phẩm**  </a>
    </h1>
</form>
</body>
</html>
