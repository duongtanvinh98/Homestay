<%-- 
    Document   : test
    Created on : Apr 2, 2019, 12:36:25 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
     <center>
        <h2>Register Form</h2>
        <!-- -->
        <mvc:form modelAttribute="user" action="kqua">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><mvc:input path="firstName" required="true" placeholder = "First Name" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><mvc:input path="lastName" required="true" placeholder = "Last Name" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><mvc:password path="password" required="true" placeholder = "Password" /></td>
                </tr>
                <tr>
                    <td>Detail:</td>
                    <td><mvc:textarea path="detail"  placeholder = "Detail" /></td>
                </tr>
                <tr>
                    <td>Birth Date:</td>
                    <td><mvc:input path="birthDate" type="date"  placeholder = "Birthdate" /></td>
                </tr>
                <tr>
                    <td>Non Smoking:</td>
                    <td><mvc:checkbox path="nonSmoking"  checked="true" /></td>
                </tr>
                <tr>
                    <td colspan="2" style ="padding-left: 120px"><input type = "submit" value="Register" /></td>
                </tr>
            </table>
        </mvc:form>
    </center>
<%@include file="include/footer.jsp" %>