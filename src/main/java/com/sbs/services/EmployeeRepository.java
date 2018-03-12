package com.sbs.services;


import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;

import com.sbs.model.Employee;



public interface EmployeeRepository extends CrudRepository<Employee, String>,MongoRepository<Employee, String> {
	

	public List<Employee> findByLastNameIgnoreCase(String name);

	
}
