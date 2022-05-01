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
<%
int empno=Integer.parseInt(request.getParameter("no"));
EmployeePOJO emp1 = new EmployeePOJO();
emp1.setEmpno(empno);
EmployeeDAO dao=new EmployeeDAO();
int row=dao.deleteEmp(emp1);

if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>