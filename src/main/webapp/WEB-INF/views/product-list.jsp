<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link href="/product-cateogry-styles.css" rel="stylesheet" />
</head>
<body>
	<h1>Shop Products</h1>
	<p>${listofproducts}</p>
	
	<table>
		<tr>
			<th>Name</th><th>Description</th><th>Price</th>
		</tr>
	    <c:forEach items="${listofproducts}" var="product">
	    <tr>
	    	<td>${product.name}</td>
			<td>${product.description}</td>
			<td><fmt:formatNumber type="currency" value="${product.price}"/></td>
		</tr>
		</c:forEach>
	</table>
	
	<p>
		<a href="/">Category List</a>
	</p>
	<p>
		<a href="/add-product">( Add a Product )</a>
	</p>
</body>
</html>