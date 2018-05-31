package com.javamuk.qnareply.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.QnA_Reply;

@Repository
public class QnAReplyDeleteDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.QnAReplyMapper";
	
	public int qnareplyDelete(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		return session.delete(namespace+".qnareplyDelete", qnA_Reply);
	}
	
	

}
