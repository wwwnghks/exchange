package com.javamuk.qnareply.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.persistence.QnAReplyCreateDAO;

@Service
public class QnAReplyCreateService {
	@Inject
	private QnAReplyCreateDAO dao;

	public int createReply(QnA_Reply qnA_Replay) {
		// TODO Auto-generated method stub
		return dao.createReply(qnA_Replay);
	}

	public int createrereply(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		return dao.createrereply(qnA_Reply);
	}

}
