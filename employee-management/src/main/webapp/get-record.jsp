<%@page import="com.cetpa.*"%>
<html>
  <body onload="makeActive('edit')">
  <%
  int eid=Integer.parseInt(request.getParameter("eid"));
  Employee emp=EmployeeRepository.getEmployee(eid);
  if(emp!=null)
  {
	  %>
	  <%@ include file="navbar.jsp" %>
	  <form action="update-record.jsp">
	  <table class='tar' border='1' style="background-color:yellow">
	   <tr style='background-color:green;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=eid%><input type="hidden" value="<%=eid%>" name='eid'></td>
	   </tr>
	   <tr>
	    <th align="left">Edit First name</th>
	    <td><input type="text" name="fname" value="<%=emp.getFirstname()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <th align="left">Edit Last name</th>
	    <td><input type="text" name="lname" value="<%=emp.getLastname()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <th align="left">Edit Phone number</th>
	    <td><input type="text" name="phone" value="<%=emp.getPhone()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <th align="left">Edit Email id</th>
	   <td><input type="text" name="email" value="<%=emp.getEmail()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <th align="left">Edit Department</th>
	    <td><input type="text" name="dept" value="<%=emp.getDepartment()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <th align="left">Edit Salary</th>
	    <td><input type="text" name="salary" value="<%=emp.getSalary()%>" class='tb' style='width:100%' required></td>
	   </tr>
	   <tr>
	    <td colspan="2" align="center">
	     <button style='width:100%;color:blue'>Update Record(Click me)</button>
	    </td>
	   </tr>
	  </table>
	  </form>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div class='dvv'>
	   <label style='color:red;font-size:1.6vw'>Employee record with id <%=eid%> does not exist</label>
	  </div>
	  <%
  }
  %>  
  
 </body>
</html>