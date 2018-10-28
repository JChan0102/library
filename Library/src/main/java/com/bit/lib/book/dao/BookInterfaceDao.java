package com.bit.lib.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bit.lib.book.model.BookInfo;

public interface BookInterfaceDao {
	
	public int insertBook(BookInfo bookInfo);
	public List<BookInfo> selectAllBook(@Param("searchWord")String searchWord,@Param("keyword")String keyword);
	public int updateBook_exist(BookInfo bookInfo);
	public int deleteBook(@Param("book_code")String book_code);
}
