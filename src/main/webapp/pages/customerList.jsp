<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<taglib uri="http://java.sun.com/jstl/core" prefix="c" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
  <tr><th>id</th><th>name</th><th>telephone</th></tr>
  <tr>
    <c:forEach items="${customerList}" var="user">
      <td>${user.id}</td>
      <td>${user.name}</td>
      <td>${user.telephone}</td>
    </c:forEach>
  </tr>
</table>

</body>
</html>
