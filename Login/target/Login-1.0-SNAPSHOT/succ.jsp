<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %><%--
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
<h1 style="text-align: center">Welcome <%=request.getParameter("username")%></h1>
<h3 style="text-align: center">Current Salary:  <%=request.getAttribute("salary")%></h3>
</br>
</br>
</br>

<h4 style="text-align: center">People who have Salary greater then you :(</h4>
<table border="1" style="width:100%">
    <tr>
        <th> ID</th>
        <th>Employee Name</th>
        <th>Employee Salary</th>
    </tr>
    <%
        PreparedStatement preparedStatement= (PreparedStatement) request.getAttribute("rs");
        ResultSet resultSet=preparedStatement.executeQuery();
    %>
    <%int i=1;%>
    <%while(resultSet.next()){%>
    <tr>
        <td><%=i++%></td>
        <td><%=resultSet.getString(1)%></td>
        <td><%=resultSet.getString(2)%></td>
    </tr>
    <%}%>
    <%if(i==1){%>
    <tr>
        <td colspan="3" style="text-align: center">No one has salary greater then you</td>
    </tr>
    <%}%>

</table>
</br></br>

    <a href="login.html" >Sign Out</a>

</body>
</html>
