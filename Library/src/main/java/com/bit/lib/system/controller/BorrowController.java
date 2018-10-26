package com.bit.lib.system.controller;

import com.bit.lib.member.model.MemberVO;
import com.bit.lib.system.model.Borrow;
import com.bit.lib.system.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BorrowController {

    @Autowired
    private BorrowService service;

    @RequestMapping(value = "/admin/borrow/membersearch",method = RequestMethod.GET)
    public String getSearchForm(){
        return "admin/borrow/search";
    }

@RequestMapping(value = "/admin/borrow/membersearch",method = RequestMethod.POST)
    public ModelAndView getBorrow(@RequestParam("member_id") String member_id){
       ModelAndView view = new ModelAndView();
       view.setViewName("admin/borrow/book");
       MemberVO member=  service.searchMember(member_id);
       view.addObject("member",member);
       view.addObject("possible",service.isPossible(member));

        return view;
    }

}
