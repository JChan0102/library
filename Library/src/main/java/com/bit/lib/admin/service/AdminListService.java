package com.bit.lib.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.lib.admin.dao.AdminDao;
import com.bit.lib.admin.model.AdminVO;

@Service
public class AdminListService {

	@Autowired
	AdminDao adminDao;

	public List<AdminVO> getAllAdmin() {
		return adminDao.selectAllAdmin();
	}

}
