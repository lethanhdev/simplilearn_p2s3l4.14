<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%       
        String productId = request.getParameter("productId"); 			//get product data from inputs
        String productName = request.getParameter("productName");
        String price = request.getParameter("price");
		
        //if data is null redirect to index.jsp
        if (productId == null || productId.equals("") || productName == null || productName.equals("") || price == null || price.equals("")) {
                response.sendRedirect("index.jsp?error=1");
        } else {             
                session.setAttribute("productId", productId);		// set session attribute and redirect to display data
                response.sendRedirect("display.jsp");               
        }
%>

<%-- Store data in java bea --%>
<jsp:useBean id="productBean" class="com.ecommerce.ProductBean" scope="session"></jsp:useBean>

	  <jsp:setProperty property="productId" name="productBean" value="<%= productId %>"/>
	  <jsp:setProperty property="productName" name="productBean" value="<%= productName %>"/>
	  <jsp:setProperty property="price" name="productBean" value="<%= Double.valueOf(price) %>" />