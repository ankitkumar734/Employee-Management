<%@page import="com.cetpa.*"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('delete')">
  <%
  int eid=Integer.parseInt(request.getParameter("eid"));
  Employee employee=EmployeeRepository.getEmployee(eid);
  EmployeeRepository.deleteEmployee(employee);
  %>  
  <div class='dv'>
  	<label class='lamsg' style='color:red'>Employee record has been deleted successfully</label>
  </div>
 </body>
</html>