<%--
  Created by IntelliJ IDEA.
  User: pllsym
  Date: 20 cze 2018
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie c: cookies){
%>
        <%=c.getName() + " " + c.getValue() %>
<%    }
%>

<a href="index.jsp">Gomepage</a>
</body>
</html>
