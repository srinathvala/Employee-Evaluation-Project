package com.sbs.services;

import java.util.List;

import com.sbs.model.Employee;

public interface EmployeeService {
	
	public List<Employee> getAllEmployees();
	public Employee getEmployee(String id);
	public void addEmployee(Employee employee);
	public void updateEmployee(String id, Employee employee);
	public void deleteEmployee(String id, Employee employee);
	public List<Employee> findEmployeeByLasname(String lastName);
	

}
