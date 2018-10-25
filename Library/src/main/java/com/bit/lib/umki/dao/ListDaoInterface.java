package com.bit.lib.umki.dao;

import java.util.List;

import com.bit.lib.umki.model.ListInfo;

public interface ListDaoInterface {
	public ListInfo test();

	public void create(ListInfo listInfo) throws Exception;

	public ListInfo read(int idx) throws Exception;

	public void update(ListInfo listInfo) throws Exception;

	public void delete(int idx) throws Exception;

	public List<ListInfo> listAll() throws Exception;

	public List<ListInfo> listPage(int page) throws Exception;

}
