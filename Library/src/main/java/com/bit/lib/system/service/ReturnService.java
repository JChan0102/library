package com.bit.lib.system.service;

import com.bit.lib.book.dao.BookInterfaceDao;
import com.bit.lib.book.model.BookInfo;
import com.bit.lib.member.dao.MemberDao;
import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.dao.BorrowDao;
import com.bit.lib.system.model.Borrow;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class ReturnService {
    @Autowired
    private BorrowDao borrowDao;

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    private BookInterfaceDao bookDao;

    @Transactional
    public HashMap<String, String> returnOk(String book_code) throws ParseException {
        HashMap<String, String> map = new HashMap<String, String>();

        Borrow borrow = borrowDao.selectByBook_code(book_code);
        int day = borrowDao.getDay(borrow.getReturnDate());
        MemberVO member = memberDao.selectOneMember(borrow.getMember_id());
            map.put("username",member.getName());
        if (day > 0) {
            map.put("day", day + "");
            DateFormat dateFormat;
            dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Calendar caldate = Calendar.getInstance();

            if (!("possible".toUpperCase().equals(member.getPossibledate().toUpperCase()))) {
                Date date = dateFormat.parse(member.getPossibledate());
                caldate.setTime(date);
            }
            caldate.add(Calendar.DATE, day);
            member.setPossibledate(dateFormat.format(new Date(caldate.getTimeInMillis())));
            System.out.println(member.getPossibledate());
            map.put("possibledate", member.getPossibledate());
            borrowDao.updatePossible(member);
        } else {
            map.put("day", "0");
        }
        availAmountUpdate(member);
        book_existUpdate(book_code);
        borrowDao.delete(borrow);

        return map;

    }

    private void book_existUpdate(String book_code) {
        BookInfo book = new BookInfo();
        book.setBook_code(book_code);
        book.setBook_exist(1);
        bookDao = sqlSessionTemplate.getMapper(BookInterfaceDao.class);
        //책 book_exist 업데이트
        bookDao.updateBook_exist(book);
    }

    private void availAmountUpdate(MemberVO memberVO) {
        memberVO.setAvailAmount(memberVO.getAvailAmount() + 1);
        memberDao.updateAvailAmount(memberVO);
    }

}
