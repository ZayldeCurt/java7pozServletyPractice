<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.User" %><%--
  Created by IntelliJ IDEA.
  User: pllsym
  Date: 20 cze 2018
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    System.out.println("cossas");
%>
<html>
<head>
    <title>Admin page</title>
</head>
<body>
<c:choose>

        <c:when test="${sessionScope.get('user')!=null}">
            <h1>Hello ${sessionScope.get('user').firstName}</h1>
        </c:when>
        <c:otherwise>
            <h1>Hello nieznajomy</h1>
        </c:otherwise>
</c:choose>


    <a href="login.jsp">Strona logowania</a>
</body>
</html>
