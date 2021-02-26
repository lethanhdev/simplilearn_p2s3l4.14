<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details Portal</title>
</head>
<body>

<%
  // check for error 
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid. Inputs maybe null</b><br><p>");
%>

<%-- use form to collect product data --%>
<form action="submit.jsp" method="post">
<table>
	<tr>
		<th colspan="2" style="background-color:grey"><font color=white>Data Entry</font></th>
	</tr>
	
	<tr>
		<td align=right>Product ID</td>
		<td><input type="text" name="productId" id="productId"></td>
	</tr>
	<tr>
		<td align=right>Product Name</td>
		<td><input type="text" name="productName" id="productName"></td>
	</tr>
	<tr>
		<td align=right>Price</td>
		<td><input type="text" name="price" id="price"></td>
	</tr>
	<tr>
		<td></td>
		<td>  <button>Submit</button></td>
	</tr>
</table>
  
</form>


</body>
</html>