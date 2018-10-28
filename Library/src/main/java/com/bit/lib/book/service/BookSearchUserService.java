package com.bit.lib.book.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.book.dao.BookInterfaceDao;
import com.bit.lib.book.model.BookInfo;

public class BookSearchUserService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private BookInterfaceDao bookDao;
	
	public List<BookInfo> searchBook(String keyword){
		
		bookDao = sqlSessionTemplate.getMapper(BookInterfaceDao.class);
		
		List<BookInfo> list = bookDao.selectUserBook(keyword);
		
		return list;
	}
}
