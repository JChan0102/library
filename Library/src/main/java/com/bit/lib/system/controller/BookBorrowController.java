package com.bit.lib.system.controller;

import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookBorrowController {

    @Autowired
    private BorrowService service;


    @RequestMapping(value = "/admin/borrow/book",method = RequestMethod.GET)
    public ModelAndView getBorrow(@RequestParam("id") String member_id){
        ModelAndView view = new ModelAndView();
       view.setViewName("admin/borrow/book");
      MemberVO member=  service.selectMember(member_id);
       view.addObject("member",member);
       view.addObject("possible",service.isPossible(member));
        return view;
    }

}
