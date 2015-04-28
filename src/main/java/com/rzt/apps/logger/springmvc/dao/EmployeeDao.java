package com.rzt.apps.logger.springmvc.dao;

import java.util.List;

import com.rzt.apps.logger.springmvc.domain.Employee;

public interface EmployeeDao {

	void saveEmployee(Employee employee);
	
	List<Employee> findAllEmployees();
	
	void deleteEmployeeBySsn(String ssn);
}
