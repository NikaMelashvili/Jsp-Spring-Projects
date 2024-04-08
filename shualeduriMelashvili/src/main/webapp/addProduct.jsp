<%@ page import="org.melashvili.shualedurimelashvili.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Extracting Fields</title>
</head>
<body>
<h1>Product Information</h1>

<%
    String name = request.getParameter("product_name");
    double price = Double.parseDouble(request.getParameter("product_price"));
    int quantity = Integer.parseInt(request.getParameter("product_quantity"));

    Product product = new Product(name, price, quantity);

    request.setAttribute("product", product);
%>

<a href="./create.jsp">Go back</a>
</body>
</html>
