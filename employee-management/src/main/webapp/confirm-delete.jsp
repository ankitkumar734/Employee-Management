<%@page import="com.cetpa.*"%>
<html>
  <body onload="makeActive('delete')">
  <%
  int eid=Integer.parseInt(request.getParameter("eid"));
  Employee emp=EmployeeRepository.getEmployee(eid);
  if(emp!=null)
  {
	  %>
	  <%@ include file="navbar.jsp" %>
	  <form action="delete-record.jsp">
	  <table class='tar' border='1' style="background-color:gray;color:white">
	   <tr style='background-color:red;color:white'>
	    <th colspan="2" style="text-align: center">Employee Details</th>
	   </tr>
	   <tr>
	    <th align="left">Employee Id</th>
	    <td><%=eid%><input type="hidden" value="<%=eid%>" name='eid'></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td><%=emp.getFirstname()%></td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td><%=emp.getLastname()%></td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td><%=emp.getPhone()%></td>
	   </tr>
	   <tr>
	    <th align="left">Email id</th>
	    <td><%=emp.getEmail()%></td>
	   </tr>
	   <tr>
	    <th align="left">Department</th>
	    <td><%=emp.getDepartment()%></td>
	   </tr>
	   <tr>
	    <th align="left">Salary</th>
	    <td>&#8377;<%=emp.getSalary()%></td>
	   </tr>
	   <tr>
	    <td colspan="2" align="center">
	     <button style='width:100%;color:red'>Confirm Delete(Click me)</button>
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