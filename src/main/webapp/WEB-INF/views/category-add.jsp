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
	<h1>Add a Categories</h1>
	
	<form method="post">
		<p>
			<label>
				Name:
				<input name="name" />
			</label>
		</p>
		<p>
			<label>
				Color:
				<input name="cssColor" type="color" />
			</label>
		</p>
		<p>
			<button type="submit">Add</button>
			<a href="/">Never mind.</a>
		</p>
	</form>
</body>
</html>