package com.bit.lib.umki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.lib.umki.model.ReplyInfo;
import com.bit.lib.umki.service.GetWriteContentService;
import com.bit.lib.umki.service.GetWriteService;

@Controller
public class ReplyWriteController {

	@Autowired
	GetWriteService service1;
	@Autowired
	GetWriteContentService service2;

	@RequestMapping(value = "/member/home/view/reply", method =RequestMethod.POST)
	@ResponseBody
	public ReplyInfo write(ReplyInfo replyInfo) {
		service1.replyWrite(replyInfo);
		ReplyInfo replyInfo2 = service2.getReplyContent(replyInfo.getIdx());
//		System.out.println(replyInfo2);
		return replyInfo2;
	}
}