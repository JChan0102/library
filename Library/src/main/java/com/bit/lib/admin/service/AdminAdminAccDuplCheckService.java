package com.bit.lib.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.lib.admin.dao.AdminDao;
import com.bit.lib.member.dao.MemberDao;

@Service
public class AdminAdminAccDuplCheckService {

	@Autowired
	AdminDao adminDao;

	public boolean isExistID(String admin_id) {
		return (adminDao.selectOneAdmin(admin_id) != null);
	}
}
