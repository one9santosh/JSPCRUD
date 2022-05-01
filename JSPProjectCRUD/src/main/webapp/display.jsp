<%@page import="com.company.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Employee Details</h1>
<table border="1">

<%EmployeeDAO dao=new  EmployeeDAO();
List<EmployeePOJO> emp=(List<EmployeePOJO>)dao.display();
%>
<tr><th>Empno</th><th>Empname</th><th>Empemail</th><th>Edit Name</th><th>Delete person</th></tr>
<%for(EmployeePOJO e:emp){ %>
<tr><td><%=e.getEmpno() %></td><td><%=e.getEmpname() %></td><td><%=e.getEemail() %></td><td><a href="edit.jsp">Edit Name</a></td><td><a href="delete.jsp">Delete Person</a></td></tr>
<%} %>
</table>


</body>
</html>

