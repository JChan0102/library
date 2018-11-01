package com.bit.lib.aladin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.bit.lib.aladin.dao.AladinDAO;
import com.bit.lib.aladin.model.AladinDataVO;

@Service
public class AladinBookAPIService {

	@Autowired
	AladinDAO aladinDAO;

	public AladinDataVO getAladinData(String book_isbn13) throws Exception {

		AladinDataVO aladinDataVO = new AladinDataVO();
		Document result = aladinDAO.getBookList(book_isbn13);

		NodeList nList = result.getElementsByTagName("item");

		for (int i = 0; i < nList.getLength(); i++) {
			Node node = nList.item(i);
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;

				aladinDataVO.setLink(getTagValue("link", eElement));
				aladinDataVO.setCover(getTagValue("cover", eElement));

			}
		}
		return aladinDataVO;
	}

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
