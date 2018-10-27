package com.bit.lib.umki.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.umki.dao.ListDaoInterface;
import com.bit.lib.umki.model.ListInfo;

public class GetWriteContentService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	ListDaoInterface dao;
	ListInfo listInfo = null;
	
	public ListInfo getContent(String list_name) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
		
		try {
			listInfo = dao.getContent(list_name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listInfo;
	}

}
