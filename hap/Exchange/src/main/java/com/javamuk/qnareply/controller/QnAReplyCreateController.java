package com.javamuk.qnareply.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.service.QnAReplyCreateService;

@Controller
public class QnAReplyCreateController {

	@Inject
	private QnAReplyCreateService service;
	
	@RequestMapping(value="/qna/qna_reply/write",method=RequestMethod.POST)
	@ResponseBody
	public int replycreate(QnA_Reply qnA_Reply) {
		int result = service.createReply(qnA_Reply);
		return result;
		
	}
	
	@RequestMapping(value="/qna/qna_reply/rewrite",method=RequestMethod.POST)
	@ResponseBody
	public int replyrewrite(QnA_Reply qnA_Reply) {
		int result = service.createrereply(qnA_Reply);
		return result;
		
	}
	
	
}
