package com.bit.lib.book.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bit.lib.book.dao.BookInterfaceDao;
import com.bit.lib.book.model.BookInfo;

public class BookSearchDeleteService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private BookInterfaceDao bookDao;
	
	public List<BookInfo> searchBook(String searchWord,String keyword){
		
		System.out.println("서비스 :"+searchWord);
		List<BookInfo> list = new ArrayList<BookInfo>();
		
		bookDao = sqlSessionTemplate.getMapper(BookInterfaceDao.class);
		
		list = bookDao.selectAllBook(searchWord, keyword);
		
		return list;
	}

}
