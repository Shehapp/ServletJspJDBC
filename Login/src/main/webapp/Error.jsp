<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: sheha
  Date: 3/28/2023
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<b>Error: </b>
<%= (String)request.getAttribute("error")%>

</br></br>

<a href="login.html" >try again</a>
</body>
</html>
