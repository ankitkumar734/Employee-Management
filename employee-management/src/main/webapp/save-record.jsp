<%@page import="com.cetpa.EmployeeRepository"%>
<%@page import="com.cetpa.Employee"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('add')">
  <%
  int eid=Integer.parseInt(request.getParameter("eid"));
  String fname=request.getParameter("firstname");
  String lname=request.getParameter("lastname");
  String phone=request.getParameter("phone");
  String email=request.getParameter("email");
  String dept=request.getParameter("department");
  int salary=Integer.parseInt(request.getParameter("salary"));
  Employee employee=new Employee(eid,fname,lname,phone,email,dept,salary);
  EmployeeRepository.saveEmployee(employee);
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:green'>Employee has been added successfully</label>
  </div>
 </body>
</html>
