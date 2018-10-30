package com.bit.lib.system.service;

import com.bit.lib.system.dao.BorrowDao;
import com.bit.lib.system.model.Borrow;
import com.bit.lib.system.model.MybookList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExtensionService {

    @Autowired
    private BorrowDao borrowDao;

    public int extension(MybookList mybookList){
        mybookList.setExtension(1);
        return borrowDao.updateExtension(mybookList);
    }
   public List<Borrow> getList(){
        return borrowDao.selectListExtension();
   }

   public int getCount(){
        return borrowDao.countExtension();
    }



}
