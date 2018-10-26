package com.bit.lib.system.service;

import com.bit.lib.member.dao.MemberDao;
import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.dao.BorrowDao;
import com.bit.lib.system.model.Borrow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Service
public class BorrowService {

    @Autowired
    private BorrowDao borrowDao;

    @Autowired
    private MemberDao memberDao;

    public MemberVO searchMember(String member_id){
        MemberVO member = memberDao.selectOneMember(member_id);

        return member;
    }
    public boolean isPossible(MemberVO member) {
        boolean possible = false;
        if("possible".toUpperCase().equals(member.getPossibledate().toUpperCase())&&member.getAvailAmount()>0){
        possible=true;
        }
        return possible;
    }

    @Transactional
    public boolean rent(Borrow borrow){
        boolean rentOk= false;

        DateFormat dateFormat;
        dateFormat= new SimpleDateFormat("yyyy-MM-dd");


        Calendar today = Calendar.getInstance();
        borrow.setBorrowDate(dateFormat.format(today));
        today.add(Calendar.DATE,7);
        borrow.setReturnDate(dateFormat.format(today));

       int rentSuccess = borrowDao.insert(borrow);
       if(rentSuccess==1){
           availAmountUpdate(borrow.getMember_id());
           book_existUpdate(borrow.getBook_code());
           rentOk=true;
       }
       return rentOk;
    }

    private int book_existUpdate(String book_code) {
        //책 book_exist 업데이트
    return 0;
    }

    private int availAmountUpdate(String member_id) {
        //회원 availAmount 업데이트
    return 0;
    }

}
