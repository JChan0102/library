package com.bit.lib.book.model;

public class OrderParam {
	private String SearchWord;
	private String orderBy;
	private int listCnt;
	private String keyword;
	
	public String getSearchWord() {
		return SearchWord;
	}
	public void setSearchWord(String searchWord) {
		SearchWord = searchWord;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "OrderParam [SearchWord=" + SearchWord + ", orderBy=" + orderBy + ", listCnt=" + listCnt + ", keyword="
				+ keyword + "]";
	}
	
	
}
