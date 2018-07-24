<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Login</title>
<style>
error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div align="Center">
		<h2>Enroll Customer Details here</h2>
		<table>
			<form:form action="registerAssociate" method="post"
				modelAttribute="associate">


				<tr>
					<td>Firstname</td>
					<td><form:input path="firstName" size="30" /></td>
					<td><form:errors path="firstName" cssClass="error" /></td>
				</tr>
		
				<tr>
					<td>LastName:</td>
					<td><form:input path="lastName" size="30" /></td>
					<td><form:errors path="lastName" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Dept:</td>
					<td><form:input path="department" size="30" /></td>
					<td><form:errors path="department" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Desgni:</td>
					<td><form:input path="designation" size="30" /></td>
					<td><form:errors path="designation" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Pancard:</td>
					<td><form:input path="pancard" size="30" /></td>
					<td><form:errors path="pancard" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="emailId" size="30" /></td>
					<td><form:errors path="emailId" cssClass="error" /></td>
				</tr>
				<tr>
					<td>accountnum:</td>
					<td><form:input path="bankDetails.accountNumber" size="30" /></td>
					<td><form:errors path="bankDetails.accountNumber" cssClass="error" /></td>
				</tr>
				<tr>
					<td>accountnum:</td>
					<td><form:input path="salary.basicSalary" size="30" /></td>
					<td><form:errors path="salary.basicSalary" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>bankName:</td>
					<td><form:input path="bankDetails.bankName" size="30" /></td>
					<td><form:errors path="bankDetails.bankName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>IFsc:</td>
					<td><form:input path="bankDetails.ifscCode" size="30" /></td>
					<td><form:errors path="bankDetails.ifscCode" cssClass="error" /></td>
				</tr>	
					<tr>
					<td>IFsc:</td>
					<td><form:input path="yearlyInvestmentUnder80C" size="30" /></td>
					<td><form:errors path="yearlyInvestmentUnder80C" cssClass="error" /></td>
				</tr>	
				<tr>
					<td><input type="submit" value="submit"/></td>
				</tr>
				
			</form:form>
		</table>
	</div>

</body>
</html>