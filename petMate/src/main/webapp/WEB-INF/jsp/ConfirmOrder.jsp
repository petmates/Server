<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<jsp:include page = "/WEB-INF/jsp/menu.jsp"/>
<%@page import="com.example.petMate.controller.OrderForm"%>
<%@page import="java.util.Date"%>
<%
	OrderForm orderForm = (OrderForm)session.getAttribute("orderForm");
%>
<h2>&nbsp;&nbsp;&nbsp;Order</h2>
<div align="center">
  <p>
    <b>Please confirm the information below and then press continue...</b>
  </p>
  <p></p>
  <table class="n13">
    <tr>
      <td align="center" colspan="2">
        <font size="3">
        </font>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <font color="GREEN" size="8"><b>Order Information</b></font></td>
    </tr>
    <tr>
      <td>Name:</td>
      <td><%=orderForm.getAccount().getU_name() %></td>
    </tr>
    
    <tr>
      <td>Phone:</td>
      <td><%=orderForm.getAccount().getU_phone() %></td>
    </tr>
    
    <tr>
      <td>Address:</td>
      <td><%=orderForm.getAccount().getU_address() %></td>
    </tr>
        
  </table>
  <p>
  <p>
  <p>
  <p>
    <a href="/confirmOrder.do" class="btn btn-outline-success slideright">INPUT</a>
  </p>
</div>
