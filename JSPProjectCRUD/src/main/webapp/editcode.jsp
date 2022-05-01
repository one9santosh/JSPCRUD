<%@page import="com.company.*"%>
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

String empname=request.getParameter("name");
String empemail=request.getParameter("email");
int empno=Integer.parseInt(request.getParameter("no"));
EmployeePOJO emp2=new EmployeePOJO();

emp2.setEmpname(empname);
emp2.setEemail(empemail);
emp2.setEmpno(empno);
EmployeeDAO dao=new EmployeeDAO();
int row=dao.updateEmp(emp2);
if(row>0){
	response.sendRedirect("display.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>
