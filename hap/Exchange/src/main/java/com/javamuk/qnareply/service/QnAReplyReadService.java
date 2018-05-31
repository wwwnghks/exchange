package com.javamuk.qnareply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.QnA_Reply;
import com.javamuk.qnareply.persistence.QnAReplyReadDAO;

@Service
public class QnAReplyReadService {

	@Inject
	private QnAReplyReadDAO dao;
	

	public List<QnA_Reply> qnareplyread(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		return dao.qnareplyread(qnA_Reply);
	}
	
}
