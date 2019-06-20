<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<jsp:include page = "/WEB-INF/jsp/menu.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2>&nbsp;&nbsp;&nbsp;Payment Details</h2>

<div align="center">
<form:form commandName="orderForm" action="/newOrderSubmitted.do" method="post"><br>
  
  <table>
    <tr>
      <td>Bank name</td>
      <td><form:select path="bankName" items="${bankName}" />
    </tr>
    <tr>
      <td>Account Number:</td>
      <td><form:input path="accountNumber" size="20"/> 
        <font color="red" size="2">* Use a fake number!</font>
    </tr>
    
  </table>
  <p>
  <p>
  <p>
  	<input type="submit" value="SUBMIT" class="btn btn-outline-secondary slidedown"/>
  </p>
</form:form>
</div>
