<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<h2>${title}</h2>
<table border="1" width="50%">
  <c:forEach items="${list }" var="employee">
     <tr>
        <td>${employee.employeeId }</td>
        <td>${employee.firstName }</td>
        <td>${employee.lastName }</td>
        <td>${employee.email }</td>
      </tr>
  </c:forEach>
</table>
</body>
</html>