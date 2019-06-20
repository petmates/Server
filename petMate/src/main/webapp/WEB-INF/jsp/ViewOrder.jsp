<jsp:include page = "/WEB-INF/jsp/menu.jsp"/>
<%@page import="com.example.petMate.controller.OrderForm"%>
<%
	OrderForm orderForm = (OrderForm)session.getAttribute("orderForm");
%>
<div align="center">
  <c:if test="${!empty message}">
    <b><c:out value="${message}" /></b>
  </c:if>
 <h2>&nbsp;&nbsp;&nbsp;Order Result</h2> 
  <p></p>
  <table class="n13">
    <tr>
      <td align="center" colspan="2">
        <font size="3"><b>
          <%=orderForm.getBuy().getB_date() %></b>
        </font></td>
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
</div>