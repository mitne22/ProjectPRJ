<%-- 
    Document   : managerproduct
    Created on : 18-Oct-2023, 23:47:26
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Untree.co">
        <link rel="shortcut icon" href="favicon.png">

        <meta name="description" content="" />
        <meta name="keywords" content="bootstrap, bootstrap4" />

        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/tiny-slider.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Product Management</title>
        <style>
            /* Reset some default browser styles */
            body, h1, h2, p {
                margin: 0;
                padding: 0;
            }

            /* Set a background color and text color for the page */
            body {
                background-color: #f7f7f7;
                color: #333;
                font-family: Arial, sans-serif;
            }

            /* Style the header section */
            h1 {
                background-color: #3B5D50;
                color: #fff;
                text-align: center;
                padding: 20px;
            }

            /* Style the navigation bar */
            .navbar {
                background-color: #333;
                color: #fff;
                padding: 15px 0;
            }

            .navbar-brand {
                font-size: 24px;
            }

            .navbar-nav {
                margin-right: 15px;
            }

            .nav-link {
                color: #fff;
                font-weight: 600;
            }

            /* Style the product management form */
            form {
                text-align: center;
                margin: 20px auto;
                max-width: 400px;
                background-color: #fff;
                padding: 20px;
                border: 1px solid #ddd;
                box-shadow: 0 0 5px #ddd;
            }

            input[type="text"], input[type="number"] {
                width: 95%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .add {
                background-color: #3B5D50;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            /* Style the product table */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #fff;
                border: 1px solid #ddd;
            }

            table, th, td {
                border: 1px solid #ddd;
            }

            th, td {
                padding: 10px;
                text-align: center;
            }

            /* Style the actions column in the product table */
            table td:last-child {
                text-align: center;
            }

            /* Style the sales chart */
            canvas#salesChart {
                max-width: 600px;
                margin: 20px auto;
                display: block;
                border: 1px solid #ddd;
                box-shadow: 0 0 5px #ddd;

            }

            .product-item {
                text-align: center;
            }

            .product-thumbnail {
                width: 100%;
                max-height: 100px;
                display: block;
                margin: 0 auto;
            }

        </style>
    </head>
    <body>
        <h1>Product Management</h1>
        <form action="create" method="post">
            <input type="text" name="name" placeholder="Product Name" required>
            <input type="number" name="price" placeholder="Price" step="0.01" required>
            <input type="text" name="image" placeholder="Link image" required>
            <input type="text" name="title" placeholder="Product Title" required>
            <input type="text" name="des" placeholder="Description" required>
            <label for="category">Category:</label>
            <select name="category" id="category">
                <c:forEach items="${categories}" var="c">
                    <option value="${c.cID}">${c.cName}</option>
                </c:forEach>
            </select>

            <input type="number" name="quantity" placeholder="Quantity" required>
            <input class="add" type="submit" value = "Add Product">
        </form>

        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Image</th>
                <th>Title</th>
                <th>Description</th>
                <th>Categories</th>
                <th>Quantity</th>
            </tr>

            <c:forEach items="${products}" var="p">
                <tr>
                    <td>${p.pID}</td>
                    <td>${p.pName}</td>
                    <td>${p.price}</td>
                    <td><img src="${p.image}" class="img-fluid product-thumbnail product-item" ></td>
                    <td>${p.title}</td>
                    <td>${p.description}</td>
                    <td>
                        <c:forEach items="${categories}" var="c">
                            <c:if test="${p.cID eq c.cID}">
                                ${c.cName}
                            </c:if>
                        </c:forEach>
                    </td>
                    <td>${p.quantity}</td>
                    <td>
                        <a href="load?pID=${p.pID}"><img src="https://banner2.cleanpng.com/20180417/eeq/kisspng-computer-icons-editing-icon-design-random-icons-5ad5ac7df28c06.7497951515239527659935.jpg" width="15px" height="15px" alt="alt"/></a>
                        <a href="delete?pID=${p.pID}"><img src="data:image/png;base64,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" width="15px" height="15px" alt="alt"/></a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>

