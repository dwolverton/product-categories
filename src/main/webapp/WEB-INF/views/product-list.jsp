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
	
	<table>
		<tr>
			<th>Name</th><th>Description</th><th>Price</th>
		</tr>
		<tr>
			<td>NAME</td><td>THIS IS A DESCRIPTOIN HERE</td><td><fmt:formatNumber type="currency" value="100"/></td>
		</tr>
	</table>
	
	<p>
		<a href="/">Category List</a>
	</p>
	<p>
		<a href="/add-product">( Add a Product )</a>
	</p>
</body>
</html>