<%@page import="com.cetpa.EmployeeRepository"%>
<%@page import="com.cetpa.*"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('edit')">
  <%
  int eid=Integer.parseInt(request.getParameter("eid"));
  String fname=request.getParameter("fname");
  String lname=request.getParameter("lname");
  String phone=request.getParameter("phone");
  String email=request.getParameter("email");
  String dept=request.getParameter("dept");
  int salary=Integer.parseInt(request.getParameter("salary"));
  Employee employeen=new Employee(eid,fname,lname,phone,email,dept,salary);
  Employee employeeo=EmployeeRepository.getEmployee(eid);
  EmployeeRepository.updateEmployee(employeen,employeeo);
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:green'>Employee has been updated successfully</label>
  </div>
 </body>
</html>
