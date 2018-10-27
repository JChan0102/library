package com.bit.lib.umki.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.umki.dao.ListDaoInterface;
import com.bit.lib.umki.model.ListInfo;

public class GetContentService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	ListDaoInterface dao;
	ListInfo listInfo = null;

	public ListInfo getContentIdx(int idx) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
		
		try {
			listInfo = dao.getContentIdx(idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return listInfo;
	}

}
