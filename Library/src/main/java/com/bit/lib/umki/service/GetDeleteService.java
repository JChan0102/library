package com.bit.lib.umki.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.umki.dao.ListDaoInterface;

public class GetDeleteService {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	ListDaoInterface dao;

	public void delete(int idx) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
			try {
				dao.delete(idx);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
}
