package com.javamuk.qnareply.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.persistence.QnAReplyDeleteDAO;

@Service
public class QnAReplyDeleteService {
	
	@Inject
	private QnAReplyDeleteDAO dao;

	public int qnareplyDelete(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		return dao.qnareplyDelete(qnA_Reply);
	}
	
	

}
