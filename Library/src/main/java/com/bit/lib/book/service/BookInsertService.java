package com.bit.lib.book.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.book.dao.BookInterfaceDao;

public class BookInsertService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private BookInterfaceDao bookDao;
	
	
	
}
