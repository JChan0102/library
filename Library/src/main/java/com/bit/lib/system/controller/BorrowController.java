package com.bit.lib.system.controller;

import com.bit.lib.system.model.Borrow;
import com.bit.lib.system.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BorrowController {

    @Autowired
    private BorrowService service;

@RequestMapping("/admin/borrow")
    public String getBorrow(Borrow borrow){
        service.rent(borrow);

        return "";
    }

}
