package com.rzt.apps.logger.springmvc.dao;


import java.util.List;

import com.rzt.apps.logger.springmvc.domain.DataLog;

public interface DataLogDao {

	void saveLog(DataLog dl);

	List<String> findAllUsers();

	List<DataLog> getLogData( String person );	
}
