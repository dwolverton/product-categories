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
				<input name="name" required />
			</label>
		</p>
		<p>
			<label>
				Description:
				<input name="description" size="40"/>
			</label>
		</p>
		<p>
			<label>
				Price:
				<input name="price" type="number" step="0.01" min="0" required />
			</label>
		</p>
		<p>
			<label>
				Category:
				<select name="category">
					<c:forEach items="${ categories }" var="category">
						<option value="${ category.id }"><c:out value="${ category.name }" /></option>
					</c:forEach>
				</select>
			</label>
		</p>
		<p>
			<button type="submit">Add</button>
			<a href="/products">Never mind.</a>
		</p>
	</form>
</body>
</html>