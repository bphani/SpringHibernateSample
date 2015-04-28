package com.rzt.apps.logger.springmvc.service;


import java.util.List;

import com.rzt.apps.logger.springmvc.domain.DataLog;

public interface LoggerDataService {

	void saveLogData(DataLog dl);

	List<String> getAllUsers();

	List<DataLog> getLogData( String person );


}
