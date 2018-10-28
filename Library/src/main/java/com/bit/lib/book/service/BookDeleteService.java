package com.bit.lib.book.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.bit.lib.book.dao.BookInterfaceDao;

public class BookDeleteService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private BookInterfaceDao bookDao;
	
	@Transactional
	public int bookDelete(String book_code) {
		
		bookDao = sqlSessionTemplate.getMapper(BookInterfaceDao.class);
		
		return bookDao.deleteBook(book_code);
		
	}
}
