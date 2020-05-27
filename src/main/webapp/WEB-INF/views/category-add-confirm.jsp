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
	<h1>Category Added</h1>
	<p>
		Name: <c:out value="${ category.name }"/>
	</p>
	<p>
		Color: <span class="category-mark" style="background-color: <c:out value="${category.cssColor}" />"></span>
		<c:out value="${ category.cssColor }"/>
	</p>
	<p>
		<a href="/">OK</a>
	</p>
</body>
</html>