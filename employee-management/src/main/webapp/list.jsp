<%@page import="com.cetpa.*"%>
<%@page import="java.util.List"%>
<%@ include file="navbar.jsp" %>
<html>
 <body  onload="makeActive('list')">
  <div class='container mt-5'>
  	<div class='card col-md-12 mx-auto' style='border:3px solid silver'>
  	  <div class='card-body'>
  	   <div class='table scrollit'>
  	    <table class='table table-hover'>
  	     <thead>
  	      <tr>
  	      	<th>Employee id</th><th>First name</th><th>Last name</th>
  	      	<th>Phone number</th><th>Email Id</th><th>Department</th><th>Salary</th>
  	      </tr>
  	     </thead>
  	     <tbody>
  	     <%
  	     List<Employee> empList=EmployeeRepository.getEmployeeList();
  	     for(Employee emp:empList)
  	     {
  	    	 %>
  	    	 <tr>
  	    	  <td><%=emp.getEid()%></td>
  	    	  <td><%=emp.getFirstname()%></td>
  	    	  <td><%=emp.getLastname()%></td>
  	    	  <td><%=emp.getPhone()%></td>
  	    	  <td><%=emp.getEmail()%></td>
  	    	  <td><%=emp.getDepartment()%></td>
  	    	  <td>&#8377;<%=emp.getSalary()%></td>
  	    	 </tr>
  	    	 <%
  	     }
  	     %>
  	     </tbody> 
  	    </table>
  	   </div> 	
  	  </div>
  	</div>
  </div>
 </body>
</html>