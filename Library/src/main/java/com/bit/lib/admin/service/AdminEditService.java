package com.bit.lib.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.lib.admin.dao.AdminDao;
import com.bit.lib.admin.model.AdminVO;

@Service
public class AdminEditService {

	@Autowired
	AdminDao adminDao;

	public AdminVO getEditAdmin(String admin_id) {
		return adminDao.selectOneAdmin(admin_id);
	}

	public int editAdmin(AdminVO av) {
		int resultCnt = adminDao.updateAdmin(av);

		return resultCnt;
	}
}
