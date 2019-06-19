<jsp:include page = "/WEB-INF/jsp/menu.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="targetUrl"><c:url value="/newOrderSubmitted.do" /></c:set>

<div align="center">
<form:form commandName="buy" action="${targetUrl}" method="post">
  <form:errors cssClass="error" /> <br><br>
  
  <table class="n13">
    <tr>
      <td colspan="2">
        <font color="green" size="4"><b>Payment Details</b></font></td>
    </tr>
    <tr>
      <td>Bank name</td>
      <td><form:select path="b" items="${bankName}" />
    </tr>
    <tr>
      <td>Account Number:</td>
      <td><form:input path="accountNumber" /> 
        <font color="red" size="2">* Use a fake number!</font>
    </tr>
    
    <tr>
      <td colspan="2">
        <font color="green" size="4"><b>Billing Address</b></font></td>
    </tr>
    <tr>
      <td>name:</td>
      <td><form:input path="account.u_name" /> </td>
    </tr>
    <tr>
      <td>Address:</td>
      <td><form:input path="account.u_address" /></td>
    </tr>
    <tr>
      <td>Phone:</td>
      <td><form:input path="account.u_phone" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <form:checkbox path="shippingAddressRequired"
          label="Ship to different address..." /></td>
    </tr>
  </table>
  <p>
    <input type="image" src="../images/button_submit.gif">
  </p>
</form:form>
</div>
