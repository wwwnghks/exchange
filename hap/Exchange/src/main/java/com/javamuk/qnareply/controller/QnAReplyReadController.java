package com.javamuk.qnareply.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.service.QnAReplyReadService;

@Controller
public class QnAReplyReadController {

	@Inject
	private QnAReplyReadService service;
	
	@RequestMapping(value="/qna/qna_reply/read",method=RequestMethod.GET)
	@ResponseBody
	public JSONObject qnareplyread(QnA_Reply qnA_Reply) {
		
		List<QnA_Reply> list = service.qnareplyread(qnA_Reply);
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getQa_re_writer().equals("manager")) {
				list.get(i).setWriter_name(list.get(i).getMan_name());
			}else if(list.get(i).getQa_re_writer().equals("member")) {
				list.get(i).setWriter_name(list.get(i).getMem_name());
			}
		}
		System.out.println(list);
		HashMap<String, Object> hash = new HashMap<String,Object>();
		
		hash.put("list", list);
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(hash);

		return jsonObject;
		
	}

	
	
}
