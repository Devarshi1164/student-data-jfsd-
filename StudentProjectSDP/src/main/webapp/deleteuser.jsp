<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/>
<h3 align="center" >Delete User</h3>
<table align="center" border=2 class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>CONTACT NO</th>
<th>ACTION</th>
</tr>
<c:forEach items="${userlist}" var="user">
<tr>
<td><c:out value="${user.id}"></c:out></td>
<td><c:out value="${user.name}"></c:out></td>
<td><c:out value="${user.gender}"></c:out></td>
<td><c:out value="${user.dob}"></c:out></td>
<td><c:out value="${user.email}"></c:out></td>
<td><c:out value="${user.contact}"></c:out></td>

<td>
	<a href = '<c:url value='delete?id=${user.id}'></c:url>'>Delete</a>
</td>
</tr>
</c:forEach>

</table>
</body>
</html>