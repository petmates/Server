<jsp:include page = "/WEB-INF/jsp/menu.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.example.petMate.domain.Cart"%>
<%@page import="com.example.petMate.domain.CartItem" %>
<%@page import="com.example.petMate.domain.Item" %>
<%@page import="java.util.Iterator" %>
<%
	Cart cart = (Cart)session.getAttribute("sessionCart");
	Iterator<CartItem> items = cart.getAllCartItems();
%>

<h2>Checkout Summary</h2>
      <form action='<c:url value="/shop/updateCartQuantities.do"/>' method="post">
        <table id="cart">
          <tr bgcolor="#cccccc">
            <td><b>Item ID</b></td>
            <td><b>Title</b></td>
            <td><b>Quantity</b></td>
            <td><b>Date</b></td>
            <td><b>Price</b></td>
            <td>&nbsp;</td>
          </tr>
          
     
          <%while (items.hasNext()) {%>
          	<tr>
          	<%
          	CartItem cartItem = (CartItem) items.next();
	      	Item item = cartItem.getItem();%>
          	<td><%=item.getI_idx() %></td>
          	<td><%=item.getI_title()%></td>
          	<td><%=item.getI_stock()%></td>
          	<td><%=item.getI_date()%></td>
          	<td><%=cartItem.getTotalPrice()%></td>
          	</tr>
          <%} %>
          
       <tr bgcolor="#FFFF88">
            <td colspan="7" align="right">
              <b>Sub Total: <%=cart.getSubTotal() %></b><br><br> 
            </td>
            <td>&nbsp;</td>
          </tr>
  
        
      </form> 
      
      <div style="text-align:center">
          <a href='<c:url value="/newOrder.do"/>'>Continue</a>
       </div>
