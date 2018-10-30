package com.bit.lib.umki.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.umki.dao.ListDaoInterface;
import com.bit.lib.umki.model.ListInfo;

public class GetUpdateService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	ListDaoInterface dao;
	
	public void update(ListInfo listInfo) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
		
		try {
			dao.update(listInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	public void ReplyUpdate(int r_idx) {
//		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
//		
//		try {
//			dao.replyUpdate(r_idx);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

}
