package com.bit.lib.umki.dao;

import java.util.List;

import com.bit.lib.umki.model.ListInfo;

public class ListDaoInterfaceImpl implements ListDaoInterface {
	public ListInfo test() {
		return null;
	}
	

	public void create(ListInfo listInfo) throws Exception{
		
	}

	public ListInfo read(int idx) throws Exception{
		return null;
		
	}

	public void update(ListInfo listInfo) throws Exception{
		
	}

	public void delete(int idx) throws Exception{
		
	}

	public List<ListInfo> listAll() throws Exception{
		return null;
		
	}

	public List<ListInfo> listPage(int page) throws Exception{
		if(page<=0) {
			page = 1;
		}
		
		page = (page-1) * 10;
		
		return null;
		
	}

}
