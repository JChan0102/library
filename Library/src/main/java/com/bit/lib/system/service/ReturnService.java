package com.bit.lib.system.service;

import com.bit.lib.member.dao.MemberDao;
import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.dao.BorrowDao;
import com.bit.lib.system.model.Borrow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Service
public class ReturnService {
    @Autowired
    private BorrowDao borrowDao;

    @Autowired
    private MemberDao memberDao;

    public boolean returnOk(String book_code) throws ParseException {

        Borrow borrow = borrowDao.selectByBook_code(book_code);

        int day = borrowDao.getDay(borrow.getReturnDate());

        if(day>0) {
            DateFormat dateFormat;
            dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Calendar caldate = Calendar.getInstance();
            MemberVO member = memberDao.selectOneMember(borrow.getMember_id());
            if(!("possible".toUpperCase().equals(member.getPossibledate()))){
               Date date = dateFormat.parse(member.getPossibledate());
            caldate.setTime(date);
            }
            caldate.add(Calendar.DATE,day);
            member.setPossibledate(dateFormat.format(new Date(caldate.getTimeInMillis())));
             memberDao.updateByPossible(member);
             }

        return true;

    }


}
