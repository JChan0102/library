package com.bit.lib.umki.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.umki.dao.ListDaoInterface;
import com.bit.lib.umki.model.ListInfo;
import com.bit.lib.umki.model.ReplyInfo;

public class GetWriteContentService {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	ListDaoInterface dao;
	ListInfo listInfo = null;
	List<ReplyInfo> replyInfo = null;
	
	public ListInfo getContent(String list_name) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
		
		try {
			listInfo = dao.getContent(list_name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listInfo;
	}

	public List<ReplyInfo> getReplyContent(int idx) {
		dao = sqlSessionTemplate.getMapper(ListDaoInterface.class);
		
		try {
			replyInfo = dao.getReplyContent(idx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return replyInfo;
	}

}
