package com.sbs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sbs.model.Employee;
import com.sbs.services.EmployeeService;


@RestController
@CrossOrigin("*")
@RequestMapping("/api")
public class EmployeeController {

		@Autowired
		private EmployeeService employeeService;
		
		@RequestMapping("/employee")
		public List<Employee> getAllEmployees() {
			
			return employeeService.getAllEmployees();	
		}
		
		@RequestMapping("/employee/{id}")
		public Employee getEmployee(@PathVariable String id) {
			return employeeService.getEmployee(id);
		}
		
		@RequestMapping(method=RequestMethod.POST, value="/employee")
		public void addEmployee(@RequestBody Employee employee) {
			employeeService.addEmployee(employee);
		}
		
		@RequestMapping(method=RequestMethod.PUT, value="/employee/{id}")
		public void updateEmployee(@RequestBody Employee employee,@PathVariable String id) {
			employeeService.updateEmployee(id,employee);
		}
		
		@RequestMapping(method=RequestMethod.DELETE, value="/employee/{id}")
		public void deleteEmployee(@PathVariable String id) {
			Employee employee = employeeService.getEmployee(id);
			employeeService.deleteEmployee(id,employee);
		}
		
		@RequestMapping("/employee/lastName/{lastname}")
		public List<Employee> getEmployeeByLastName(@PathVariable String lastname) {
			return employeeService.findEmployeeByLasname(lastname);
		}
}
