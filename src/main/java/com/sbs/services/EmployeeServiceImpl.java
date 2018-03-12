package com.sbs.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	
	public List<Employee> getAllEmployees() {
		
		List<Employee> employeeList = new ArrayList<Employee>();
		
		employeeRepository.findAll().forEach(employeeList::add);
		return employeeList;
		
	}
	
	public Employee getEmployee(String id) {
		return employeeRepository.findById(id).get();
	}

	public void addEmployee(Employee employee) {
		
		employeeRepository.save(employee);
	}

	public void updateEmployee(String id, Employee employee) {
		employeeRepository.save(employee);
	}

	public void deleteEmployee(String id, Employee employee) {
		employeeRepository.deleteById(id);
	}
	
	public List<Employee> findEmployeeByLasname(String lastName) {
		
		//List<Employee> employeeList = new ArrayList<Employee>();
		
		List<Employee> employeeList = employeeRepository.findByLastNameIgnoreCase(lastName);
		return employeeList;
		
	}

}
