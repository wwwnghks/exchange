package com.javamuk.qnareply.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.service.QnAReplyDeleteService;

@Controller
public class QnAReplyDeleteController {

	@Inject
	private QnAReplyDeleteService service;
	
	@RequestMapping(value="/qna/qna_reply/delete",method=RequestMethod.POST)
	@ResponseBody
	public int qnareplydelete(QnA_Reply qnA_Reply) {
		int result = service.qnareplyDelete(qnA_Reply);
		return result;
	}


	
	
}
