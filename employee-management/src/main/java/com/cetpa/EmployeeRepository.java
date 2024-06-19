package com.cetpa;

import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class EmployeeRepository 
{
	private static Session session;
	private static Transaction tr;
	//Static block will be executed on loading of this class
	static
	{
		//Code to create object of SessionFactory interface
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		//Code to create object of Session interface
		session=factory.openSession();
		//Code to create object of Transaction interface
		tr=session.getTransaction();
	}
	public static void saveEmployee(Employee emp)
	{
		tr.begin();
		session.save(emp);
		tr.commit();
	}
	public static List<Employee> getEmployeeList()
	{
		Query<Employee> query=session.createQuery("from Employee",Employee.class);
		List<Employee> employeeList=query.list();
		return employeeList;
	}
	public static Employee getEmployee(int eid)
	{
		Employee emp=session.get(Employee.class,eid);
		return emp;
	}
	public static void deleteEmployee(Employee emp)
	{
		tr.begin();
		session.delete(emp);
		tr.commit();
	}
	public static void updateEmployee(Employee empn,Employee empo)
	{
		tr.begin();
		empo.setFirstname(empn.getFirstname());
		empo.setLastname(empn.getLastname());
		empo.setPhone(empn.getPhone());
		empo.setEmail(empn.getEmail());
		empo.setDepartment(empn.getDepartment());
		empo.setSalary(empn.getSalary());
		tr.commit();
	}
}
