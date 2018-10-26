package com.bit.lib.system.service;

import com.bit.lib.member.dao.MemberDao;
import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.dao.BorrowDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class TaskTestService {

@Autowired
    private MemberDao memberDao;

        @Scheduled(cron = "0 0 10 * * *")
        public void Scheduler(){

            List<MemberVO> list = memberDao.selecAlltByPossible();

            DateFormat dateFormat;
            dateFormat= new SimpleDateFormat("yyyy-MM-dd");
            String today = dateFormat.format(new Date());
            for (int i=0; i<list.size();i++) {
                MemberVO member = list.get(i);

                if(today.equals(member.getPossibledate())){
                memberDao.updateByPossible(member);
                }

            }
        }
}
