<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
<!------ Include the above in your HEAD tag ---------->


    <div class="container" id="tourpackages-carousel">
      <div class="row">
        <div class="col-lg-12"><h1>&nbsp;&nbsp;&nbsp;Checkout Summary</h1><h2>Sub Total: <%=cart.getSubTotal() %>WON</h2>
        
        
      	<div class="btn icon-btn btn-primary pull-right">
          <a href='<c:url value="/newOrder.do"/>'><font size ="5">CONTINUE</font></a>
        </div>
        </div>
        <p>
 		<p>
 
 		<%
 			while (items.hasNext()) {%>
          	<%
          		CartItem cartItem = (CartItem) items.next();
	      		Item item = cartItem.getItem();
	      	%>
        	<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
          		<div class="thumbnail">
              		<div class="caption">
                		<br>
                		
                		<div class='col-lg-12 well well-add-card'>
                    		<h4><%=item.getI_idx() %></h4>
                    	</div>
                    	<div class='col-lg-12'>
                    		<p><%=item.getI_title()%></p>
                    		<p><%=item.getI_date()%></p>
                    		<p><%=item.getI_stock()%></p>
                    		<p><%=item.getI_price()%>WON</p>
                    		<p><%=cartItem.getTotalPrice()%>WON</p>
                		</div>
                		<span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>
            		</div>
          		</div>
          	</div>
          	<%} %>
     
        
      
      </div><!-- End row -->
    </div><!-- End container -->