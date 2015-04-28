package com.rzt.apps.logger.springmvc.service;

import java.util.List;

import com.rzt.apps.logger.springmvc.domain.Employee;

public interface EmployeeService {

	void saveEmployee(Employee employee);
	
	List<Employee> findAllEmployees(); 
	
	void deleteEmployeeBySsn(String ssn);
}
