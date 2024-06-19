package com.cetpa;

//Persistent class
public class Employee 
{
	//Instance variables
	private int eid;
	private String firstname;
	private String lastname;
	private String phone;
	private String email;
	private String department;
	private int salary;
	
	//Non-parameterized constructor
	public Employee() {}

	//Parameterized constructor
	public Employee(int eid, String firstname, String lastname, String phone, String email, String department,int salary) 
	{
		this.eid = eid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phone = phone;
		this.email = email;
		this.department = department;
		this.salary = salary;
	}

	//Getters and setters
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
		
}
