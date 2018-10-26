package com.bit.lib.system.service;

import com.bit.lib.system.dao.BorrowDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Service
public class TaskTestService {

/*
@Autowired
    private MemberDao dao
*/

        @Scheduled(cron = "0 0 10 * * *")
        public void Scheduler(){

                //List<memberVo> list =dao.selectByPossible
            List<String> list = new ArrayList<String>();
            //select member_id, possibledate from member where possibledate not like 'possible';
            DateFormat dateFormat;
            dateFormat= new SimpleDateFormat("yyyy-MM-dd");
            for (int i=0; i<list.size();i++) {
                //Member member = list.get(i);
                //
                //Date date = dateFormat.parse(member.getPossibleDate());
                //Calendar caldate = Calendar.getInstance();
                //caldate.setTime(date);
                //caldate.add(Calendar.DATE,-1);
                //member.setPossibleDate(dateFormat.format(caldate);
                //dao.updateByPossible(member);
            }
        }
}
