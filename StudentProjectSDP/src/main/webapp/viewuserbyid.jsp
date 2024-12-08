<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
.container
{
text-align: center
}
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align = "center"><u>View User By Id</u></h3><br/>
<div class = "container">
<form method="post" action="displayuser">
<label>Select User ID</label>
<select name="id" class="form-select" name="id" required>
<option value="">----Select----</option>
<c:forEach items="${userlist}" var="user">
<option value="${user.id}">${user.id}-${user.name}</option>
</c:forEach>
</select>
<br/><br/>
<input type="submit" value="view" class="btn btn-success"/>
</form>
</div>
</body>
</html>