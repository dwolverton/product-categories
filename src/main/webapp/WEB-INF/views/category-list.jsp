<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categories</title>
<link href="/product-cateogry-styles.css" rel="stylesheet" />
</head>
<body>
	<h1>Shop Categories</h1>
	
	<ul class="category-list">
		<c:forEach items="${ categories }" var="category">
			<li>
				<span class="category-mark" style="background-color: <c:out value="${category.cssColor}" />"></span>
				<a href="/products-by-category">
					<c:out value="${ category.name }" />
				</a>
			</li>
		</c:forEach>
	</ul>
	
	<p>
		<a href="/products">See all products</a>
	</p>
	<p>
		<a href="/add-category">( Add a Category )</a>
	</p>
</body>
</html>