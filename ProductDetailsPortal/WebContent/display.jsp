<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Product Details</title>
</head>
<body>

<%-- Display Product data from ProductBean --%>
<jsp:useBean id="productBean" class="com.ecommerce.ProductBean" scope="session"></jsp:useBean>
<table>
	<tr>
		<th colspan="2" style="background-color:tomato"><font color=white>Product Details</font></th>
	</tr>
	
	<tr>
		<td align=right>Product ID:</td>
		<td><jsp:getProperty name="productBean" property="productId" /></td>
	</tr>
	<tr>
		<td align=right>Product Name:</td>
		<td><jsp:getProperty name="productBean" property="productName" /></td>
	</tr>
	<tr>
		<td align=right>Price:</td>
		<td><jsp:getProperty name="productBean" property="price" /></td>
	</tr>
</table>
<p>
<h4><a href=index.jsp>Return to Data Entry</a></h4>        
</body>
</html>