package com.sbs.services;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.sbs.model.*;

@RunWith(SpringJUnit4ClassRunner.class)
public class EmployeeServiceTest {

	@Mock 
	private EmployeeRepository employeeRepository; 
	
	@InjectMocks 
	private EmployeeServiceImpl employeeService; 
	
	@Test 
	public void testGetAllEmployees(){ 
	 		List<Employee> employeeList = new ArrayList<Employee>(); 
	 		
	 		employeeList.add(new Employee("1","Charles","Pearson", "charles@hotmail.com", new Date(), Boolean.TRUE)); 
	 		employeeList.add(new Employee("2","Michael","James","Michael@hotmail.com",new Date(), Boolean.TRUE));
	 		employeeList.add(new Employee("3","Tom","Ryan","ryan@hotmail.com",new Date(), Boolean.TRUE)); 
	 		when(employeeRepository.findAll()).thenReturn(employeeList); 
	 		List<Employee> result = employeeService.getAllEmployees(); 
	 		assertEquals(3, result.size()); 
	 	} 

	@Test 
	public void testGetEmployee(){ 
	 		Employee employee = new Employee("1","Charles","Pearson", "charles@hotmail.com", new Date(), Boolean.TRUE);
	 		when(employeeRepository.findById("Charles").get()).thenReturn(employee); 
	 		Employee result = employeeService.getEmployee("Charles");
	 		assertEquals(1, result.getId()); 
	 		assertEquals("Charles", result.getFirstName()); 
	 		assertEquals(true, result.getActive()); 
	 	} 


}
