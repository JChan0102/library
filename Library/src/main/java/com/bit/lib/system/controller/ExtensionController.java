package com.bit.lib.system.controller;

import com.bit.lib.system.model.MybookList;
import com.bit.lib.system.service.ExtensionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ExtensionController {

    @Autowired
    private ExtensionService service;

    @RequestMapping(value="/member/memberAccount/extension", method = RequestMethod.GET)
    public String getOk(@RequestParam("book_id") String book_id, Model model){

        MybookList mybookList = new MybookList();

        mybookList.setBook_code(book_id);
        model.addAttribute("check",service.extension(mybookList));

        return "member/memberAccount/extensionOk";
    }

@RequestMapping(value = "admin/borrow/extension", method=RequestMethod.GET)
    public String approved(){


        return "";
    }
}
