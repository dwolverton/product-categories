<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link href="/product-cateogry-styles.css" rel="stylesheet" />
</head>
<body>
	<h1>Add a Product</h1>
	
	<form method="post">
		<p>
			<label>
				Name:
				<input name="TODO" required />
			</label>
		</p>
		<p>
			<label>
				Description:
				<input name="TODO" size="40"/>
			</label>
		</p>
		<p>
			<label>
				Price:
				<input name="TODO" type="number" step="0.00" min="0" required />
			</label>
		</p>
		<p>
			<button type="submit">Add</button>
			<a href="/products">Never mind.</a>
		</p>
	</form>
</body>
</html>