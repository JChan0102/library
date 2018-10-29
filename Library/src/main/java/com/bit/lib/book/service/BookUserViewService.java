package com.bit.lib.book.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.bit.lib.book.dao.BookInterfaceDao;
import com.bit.lib.book.dao.BookSearchInsertDao;
import com.bit.lib.book.model.BookInfo;

public class BookUserViewService {

	@Autowired
	private BookSearchInsertDao bookDao;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	private BookInterfaceDao interfaceDao;

	public BookInfo bookView(String book_isbn) throws Exception {

		String option = "d_isbn";
		int listCnt = 1;
		Document result = bookDao.bookSearchList(option, book_isbn, listCnt);

		BookInfo bookInfo = new BookInfo();
		
		// 파싱할 tag
		NodeList nList = result.getElementsByTagName("item");

		for (int tmp = 0; tmp < nList.getLength(); tmp++) {
			Node node = nList.item(tmp);
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;

				bookInfo.setBook_name(getTagValue("title", eElement));
				bookInfo.setBook_image(getTagValue("image", eElement));
				bookInfo.setBook_writer(getTagValue("author", eElement));
				bookInfo.setBook_price(Integer.parseInt(getTagValue("price", eElement)));
				bookInfo.setBook_publisher(getTagValue("publisher", eElement));
				bookInfo.setBook_isbn(getTagValue("isbn", eElement));
				bookInfo.setDescription(getTagValue("description", eElement));
			}
		}
		return bookInfo;
	}// end bookView();
	
	// tag값의 정보를 가져오는 메서드
	public String getTagValue(String tag, Element eElement) {
		NodeList nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nList.item(0);
		if (nValue == null) {
			return null;
		}
		return nValue.getNodeValue();
	}// end getTagValue()
}
