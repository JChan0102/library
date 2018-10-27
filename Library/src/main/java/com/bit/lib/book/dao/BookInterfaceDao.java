package com.bit.lib.book.dao;

import java.util.List;

import com.bit.lib.book.model.BookInfo;

public interface BookInterfaceDao {
	
	public int insertBook(BookInfo bookInfo);
	public List<BookInfo> selectAllBook(String option,String keyword);
	public int updateBook_exist(BookInfo bookInfo);
}
